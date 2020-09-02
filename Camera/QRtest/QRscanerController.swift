//
//  ViewController.swift
//  QRtest
//
//  Created by 高艺巍 on 2020/9/2.
//  Copyright © 2020 YiweiGao. All rights reserved.
//

import UIKit

import AVFoundation

class QRScannerController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    @IBOutlet weak var messageLabel: UILabel!
    fileprivate var captureSession = AVCaptureSession()
    fileprivate var videoPreviewLayer = AVCaptureVideoPreviewLayer()
    fileprivate var qrCodeFrameView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let captureDevice = AVCaptureDevice.default(for: .video)!
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession.addInput(input)
            let captureMetadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(captureMetadataOutput)
            captureMetadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            captureMetadataOutput.metadataObjectTypes = [AVMetadataObject.ObjectType.qr]
            videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            videoPreviewLayer.frame = view.layer.bounds
            videoPreviewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
            view.layer.addSublayer(videoPreviewLayer)
            captureSession.startRunning()
            
            
        } catch {
            print(error)
        }
    }
}
