//
//  ViewController.m
//  Vistas
//
//  Created by cice on 1/2/17.
//  Copyright © 2017 cice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Extraemos dimensiones de la vista padre
    CGRect rectVistaPadre = self.view.bounds;
    NSLog(@"Vista padre mide: %f x %f", rectVistaPadre.size.width, rectVistaPadre.size.height);
    
    // Creamos una vista
    UIView *vistaRoja = [[UIView alloc] initWithFrame:CGRectMake(10, 10, rectVistaPadre.size.width-20, rectVistaPadre.size.height-20)];
    vistaRoja.backgroundColor = [UIColor redColor];
    
    // Metodo para añadir la vista al Controlador la vista raiz
    [self.view addSubview:vistaRoja];
    
    
    // creamos otra vista amarilla
    UIView *vistaAmarilla = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    vistaAmarilla.backgroundColor = [UIColor yellowColor];
    
    // Añadimos la vista amarilla dentro de la vista roja
    [vistaRoja addSubview:vistaAmarilla];
    
    CGRect rectVistaRoja = vistaRoja.bounds;
    
    // creamos otra vista
    UIView *vistaVerde = [[UIView alloc] initWithFrame:CGRectMake(0, rectVistaRoja.size.height /2, rectVistaRoja.size.width, rectVistaRoja.size.height/2)];
    vistaVerde.backgroundColor = [UIColor greenColor];
    
    vistaVerde.layer.borderWidth = 10;
    vistaVerde.layer.borderColor = [[UIColor brownColor] CGColor];
    vistaVerde.layer.cornerRadius = 8;
    vistaVerde.clipsToBounds = true;
    
    // Añadimos la vista amarilla dentro de la vista roja
    [vistaRoja addSubview:vistaVerde];
    
    // Animacion cambia de color y cambia el frame
//    [UIView animateWithDuration:3 animations:^{
//        
//        vistaVerde.backgroundColor = [UIColor blueColor]; vistaVerde.frame = CGRectMake(0, 0, rectVistaRoja.size.width, rectVistaRoja.size.height / 2);
//    }];
    
//    [UIView animateWithDuration:3 delay:0 options:
//     UIViewAnimationOptionAutoreverse |
//     UIViewAnimationOptionRepeat |
//     UIViewAnimationCurveEaseInOut
//     animations:^ {
//         vistaVerde.backgroundColor = [UIColor blueColor]; vistaVerde.frame = CGRectMake(0, 0, rectVistaRoja.size.width, rectVistaRoja.size.height / 2);
//         
//     } completion:^(BOOL finished) {
//         
//     }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
