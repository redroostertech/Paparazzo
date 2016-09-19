import UIKit
import AvitoToolkit

public struct MediaPickerUITheme: MediaPickerRootModuleUITheme, PhotoLibraryUITheme, ImageCroppingUITheme {

    public init() {}

    // MARK: - MediaPickerRootModuleUITheme

    public var shutterButtonColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)
    public var shutterButtonDisabledColor = UIColor.lightGray
    public var mediaRibbonSelectionColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)

    public var removePhotoIcon = MediaPickerUITheme.image(named: "delete")
    public var cropPhotoIcon = MediaPickerUITheme.image(named: "crop")
    public var returnToCameraIcon = MediaPickerUITheme.image(named: "camera")
    public var closeCameraIcon = MediaPickerUITheme.image(named: "bt-close")
    public var flashOnIcon = MediaPickerUITheme.image(named: "light_on")
    public var flashOffIcon = MediaPickerUITheme.image(named: "light_off")
    public var cameraToggleIcon = MediaPickerUITheme.image(named: "back_front")
    public var photoPeepholePlaceholder = MediaPickerUITheme.image(named: "gallery-placeholder")

    public var cameraContinueButtonTitleFont = UIFont.systemFont(ofSize: 17)
    public var cameraContinueButtonTitleColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)
    public var cameraContinueButtonTitleHighlightedColor = UIColor(red: 0, green: 152.0/255, blue: 229.0/255, alpha: 1)
    public var cameraButtonsBackgroundNormalColor = UIColor.white
    public var cameraButtonsBackgroundHighlightedColor = UIColor(white: 1, alpha: 0.6)
    public var cameraButtonsBackgroundDisabledColor = UIColor(white: 1, alpha: 0.6)
    
    public var accessDeniedTitleFont = UIFont.boldSystemFont(ofSize: 17)
    public var accessDeniedMessageFont = UIFont.systemFont(ofSize: 17)
    public var accessDeniedButtonFont = UIFont.systemFont(ofSize: 17)

    // MARK: - PhotoLibraryUITheme
    
    public var photoLibraryItemSelectionColor = UIColor(red: 0, green: 170.0/255, blue: 1, alpha: 1)
    public var photoCellBackgroundColor = UIColor.RGB(red: 215, green: 215, blue: 215)
    
    public var iCloudIcon = MediaPickerUITheme.image(named: "icon-cloud")
    
    // MARK: - ImageCroppingUITheme
    
    public var rotationIcon = MediaPickerUITheme.image(named: "rotate")
    public var gridIcon = MediaPickerUITheme.image(named: "grid")
    public var cropperDiscardIcon = MediaPickerUITheme.image(named: "discard")
    public var cropperConfirmIcon = MediaPickerUITheme.image(named: "confirm")
    public var cancelRotationButtonIcon = MediaPickerUITheme.image(named: "close-small")
    public var cancelRotationBackgroundColor = UIColor.RGB(red: 25, green: 25, blue: 25, alpha: 1)
    public var cancelRotationTitleColor = UIColor.white
    public var cancelRotationTitleFont = UIFont.boldSystemFont(ofSize: 14)

    // MARK: - Private

    private class BundleId {}

    private static func image(named name: String) -> UIImage? {
        let bundle = Bundle(for: BundleId.self)
        return UIImage(named: name, in: bundle, compatibleWith: nil)
    }
}

public protocol AccessDeniedViewTheme {
    var accessDeniedTitleFont: UIFont { get }
    var accessDeniedMessageFont: UIFont { get }
    var accessDeniedButtonFont: UIFont { get }
}

public protocol MediaPickerRootModuleUITheme: AccessDeniedViewTheme {

    var shutterButtonColor: UIColor { get }
    var shutterButtonDisabledColor: UIColor { get }
    var mediaRibbonSelectionColor: UIColor { get }
    var cameraContinueButtonTitleColor: UIColor { get }
    var cameraContinueButtonTitleHighlightedColor: UIColor { get }
    var cameraButtonsBackgroundNormalColor: UIColor { get }
    var cameraButtonsBackgroundHighlightedColor: UIColor { get }
    var cameraButtonsBackgroundDisabledColor: UIColor { get }

    var removePhotoIcon: UIImage? { get }
    var cropPhotoIcon: UIImage? { get }
    var returnToCameraIcon: UIImage? { get }
    var closeCameraIcon: UIImage? { get }
    var flashOnIcon: UIImage? { get }
    var flashOffIcon: UIImage? { get }
    var cameraToggleIcon: UIImage? { get }
    var photoPeepholePlaceholder: UIImage? { get }
    

    var cameraContinueButtonTitleFont: UIFont { get }
}

public protocol PhotoLibraryUITheme: AccessDeniedViewTheme {
    
    var photoLibraryItemSelectionColor: UIColor { get }
    var photoCellBackgroundColor: UIColor { get }
    
    var iCloudIcon: UIImage? { get }
}

public protocol ImageCroppingUITheme {
    
    var rotationIcon: UIImage? { get }
    var gridIcon: UIImage? { get }
    var cropperDiscardIcon: UIImage? { get }
    var cropperConfirmIcon: UIImage? { get }
    
    var cancelRotationBackgroundColor: UIColor { get }
    var cancelRotationTitleColor: UIColor { get }
    var cancelRotationTitleFont: UIFont { get }
    var cancelRotationButtonIcon: UIImage? { get }
}
