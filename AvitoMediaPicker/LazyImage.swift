import CoreGraphics

/// Предлагается как замена UIImage/NSImage.
/// Позволяет оптимизировать память и абстрагировать источник картинки.
protocol LazyImage {
    
    func fullResolutionImage<T: InitializableWithCGImage>(completion: T? -> ())
    
    func imageFittingSize<T: InitializableWithCGImage>(
        size: CGSize,
        contentMode: AbstractImageContentMode,
        completion: T? -> ()
    )
}

protocol InitializableWithCGImage {
    // Если хотим совсем ни к чему не привязываться (отвязаться от Core Graphics),
    // нужно создать свою структуру, представляющую bitmap, а потом реализовать
    // для UIImage и NSImage конструкторы, позволяющие инициализировать их из этой структуры.
    init(CGImage: CGImage)
}

enum AbstractImageContentMode {
    case AspectFit
    case AspectFill
}

extension LazyImage {
    /// Convenience method
    func imageFittingSize<T: InitializableWithCGImage>(size: CGSize, completion: T? -> ()) {
        imageFittingSize(size, contentMode: .AspectFill, completion: completion)
    }
}