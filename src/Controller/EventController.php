<?php

namespace App\Controller;

use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Event;
use Symfony\Component\HttpFoundation\Request;
use App\Form\EventType;

class EventController extends AbstractController
{
    #[Route('/', name: 'event')]
    public function index(ManagerRegistry $doctrine): Response
    {

        $events = $doctrine->getRepository(Event::class)->findAll();

        return $this->render('event/index.html.twig', ['events' => $events]);

    }



    #[Route('/create', name: 'event_create')]
    public function create(Request $request, ManagerRegistry $doctrine): Response
    {

        $event = new Event();
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);


        if ($form->isSubmitted() && $form->isValid()) {


            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();

            $this->addFlash(
                'notice',
                'Event Added'
            );

            return $this->redirectToRoute('event');
        }

        return $this->render('event/create.html.twig', ['form' => $form->createView()]);
    }



  

    #[Route('/edit/{id}', name: 'event_edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(Event::class)->find($id);
        $form = $this->createForm(EventType::class, $event);
        $form->handleRequest($request);
  
        if ($form->isSubmitted() && $form->isValid()) {
           
            $event = $form->getData();
            $em = $doctrine->getManager();
            $em->persist($event);
            $em->flush();
            $this->addFlash(
                 'notice',
                 'Event Edited'
                 );
  
            return $this->redirectToRoute('event');
        }
  
        return $this->render('event/edit.html.twig', ['form' => $form->createView()]);
    }

    #[Route('/delete/{id}', name: 'event_delete')]
   public function delete($id,ManagerRegistry $doctrine){
    $em = $doctrine->getManager();
    $event = $doctrine->getRepository(Event::class)->find($id);
       $em->remove($event);
       
       $em->flush();
       $this->addFlash(
           'notice',
           'Event Removed'
       );
       
       return $this->redirectToRoute('event');
   }



    #[Route('/details/{id}', name: 'event_details')]
    public function details(ManagerRegistry $doctrine, $id): Response
    {
        $event = $doctrine->getRepository(Event::class)->find($id);

        return $this->render('event/details.html.twig', ['event' => $event]);
    }


}