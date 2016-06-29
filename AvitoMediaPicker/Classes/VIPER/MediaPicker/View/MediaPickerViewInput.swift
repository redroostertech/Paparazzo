import UIKit
import AVFoundation

enum MediaPickerViewMode {
    case Camera
    case PhotoPreview(MediaPickerItem)
}

protocol MediaPickerViewInput: class {
    
    func setMode(mode: MediaPickerViewMode)
    func adjustForDeviceOrientation(orientation: DeviceOrientation)
    
    func setCaptureSession(session: AVCaptureSession)
    
    func setContinueButtonTitle(title: String)

    func setLatestLibraryPhoto(image: ImageSource?)
    
    func setFlashButtonVisible(visible: Bool)
    func setFlashButtonOn(isOn: Bool)
    func animateFlash()
    
    func addItems(item: [MediaPickerItem])
    func removeItem(item: MediaPickerItem)
    func selectItem(item: MediaPickerItem)
    
    func selectCamera()
    
    func setCameraButtonVisible(visible: Bool)
    func setShutterButtonEnabled(enabled: Bool)
    
    var onCloseButtonTap: (() -> ())? { get set }
    var onContinueButtonTap: (() -> ())? { get set }
    
    var onCameraToggleButtonTap: (() -> ())? { get set }
    func setCameraToggleButtonVisible(visible: Bool)
    
    // MARK: - Actions in photo ribbon
    var onItemSelect: (MediaPickerItem -> ())? { get set }
    
    // MARK: - Camera actions
    var onPhotoLibraryButtonTap: (() -> ())? { get set }
    var onShutterButtonTap: (() -> ())? { get set }
    var onFlashToggle: (Bool -> ())? { get set }
    
    // MARK: - Selected photo actions
    var onRemoveButtonTap: (() -> ())? { get set }
    var onCropButtonTap: (() -> ())? { get set }
    var onReturnToCameraTap: (() -> ())? { get set }
    
    var onSwipeToItem: (MediaPickerItem -> ())? { get set }
    var onSwipeToCamera: (() -> ())? { get set }
}