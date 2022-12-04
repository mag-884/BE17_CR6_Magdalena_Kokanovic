<?php

namespace App\Form;

use App\Entity\Event;


use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TimeType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\AbstractType;

use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;


class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('date', DateType::class, [
                'attr' => ['style' => 'margin-bottom:15px']
            ])
            ->add('time', TimeType::class, [
                'attr' => ['style' => 'margin-bottom:15px']
            ])
            ->add('description', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('image', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('capacity', IntegerType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('contact_email', EmailType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('contact_phone', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('address', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('url', TextType::class, [
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('type', ChoiceType::class, [
                'choices' => ['music' => 'music', 'sport' => 'sport','movie' => 'movie', 'theater' => 'theater'],
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
            ->add('save', SubmitType::class, [
                'label' => 'Create/Update event',
                'attr' => ['class' => 'btn-primary', 'style' => 'margin-bottom:15px']
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}