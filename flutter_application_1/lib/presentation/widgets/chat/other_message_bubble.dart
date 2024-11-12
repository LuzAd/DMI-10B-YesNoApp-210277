import 'package:flutter/material.dart';

class OtherMessageBubble extends StatelessWidget {
  const OtherMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // Caja para el mensaje de texto
        Container(
          decoration: BoxDecoration(
            color: colors.secondary, // Color del fondo basado en el tema
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Respuesta',
              style: TextStyle(color: Colors.white), // Color del texto
            ),
          ),
        ),
        const SizedBox(height: 5),

        // Imagen dentro de la burbuja
        _ImageBubble(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Obtén el tamaño de la pantalla

    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Radio de borde redondeado
      child: Image.network(
        'https://yesno.wtf/assets/yes/2.gif', // URL de la imagen a mostrar
        width: size.width * 0.7, // Ajusta el ancho al 70% del tamaño de la pantalla
        height: 150, // Altura fija de la imagen
        fit: BoxFit.cover, // Cómo se ajusta la imagen dentro del contenedor
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child; // Si no está cargando, muestra la imagen

          // Si está cargando, muestra un mensaje de carga
          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Jisoo está enviando una imagen'),
          );
        },
      ),
    );
  }
}
