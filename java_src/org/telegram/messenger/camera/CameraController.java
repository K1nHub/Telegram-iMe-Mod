package org.telegram.messenger.camera;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.BitmapDrawable;
import android.hardware.Camera;
import android.media.MediaRecorder;
import android.os.Build;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iMe.fork.enums.VideoVoiceCamera;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.SerializedData;
/* loaded from: classes4.dex */
public class CameraController implements MediaRecorder.OnInfoListener {
    private static final int CORE_POOL_SIZE = 1;
    private static volatile CameraController Instance = null;
    private static final int KEEP_ALIVE_SECONDS = 60;
    private static final int MAX_POOL_SIZE = 1;
    protected volatile ArrayList<CameraInfo> cameraInfos;
    private boolean cameraInitied;
    private ArrayList<ErrorCallback> errorCallbacks;
    private boolean loadingCameras;
    private boolean mirrorRecorderVideo;
    private VideoTakeCallback onVideoTakeCallback;
    private String recordedFile;
    private MediaRecorder recorder;
    ICameraView recordingCurrentCameraView;
    private ArrayList<Runnable> onFinishCameraInitRunnables = new ArrayList<>();
    protected ThreadPoolExecutor threadPool = new ThreadPoolExecutor(1, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* loaded from: classes4.dex */
    public interface ErrorCallback {

        /* renamed from: org.telegram.messenger.camera.CameraController$ErrorCallback$-CC  reason: invalid class name */
        /* loaded from: classes4.dex */
        public final /* synthetic */ class CC {
            public static void $default$onError(ErrorCallback errorCallback, int i, Camera camera, CameraSession cameraSession) {
            }
        }

        void onError(int i, Camera camera, CameraSession cameraSession);
    }

    /* loaded from: classes4.dex */
    public interface ICameraView {
        boolean startRecording(File file, Runnable runnable);

        void stopRecording();
    }

    /* loaded from: classes4.dex */
    public interface VideoTakeCallback {
        void onFinishVideoRecording(String str, long j);
    }

    public boolean hasCamera(VideoVoiceCamera videoVoiceCamera) {
        Iterator<CameraInfo> it = getCameras().iterator();
        while (it.hasNext()) {
            CameraInfo next = it.next();
            if (videoVoiceCamera == VideoVoiceCamera.FRONT && next.isFrontface()) {
                return true;
            }
            if (videoVoiceCamera == VideoVoiceCamera.BACK && !next.isFrontface()) {
                return true;
            }
        }
        return false;
    }

    public static CameraController getInstance() {
        CameraController cameraController = Instance;
        if (cameraController == null) {
            synchronized (CameraController.class) {
                cameraController = Instance;
                if (cameraController == null) {
                    cameraController = new CameraController();
                    Instance = cameraController;
                }
            }
        }
        return cameraController;
    }

    public void cancelOnInitRunnable(Runnable runnable) {
        this.onFinishCameraInitRunnables.remove(runnable);
    }

    public void initCamera(Runnable runnable) {
        initCamera(runnable, false);
    }

    private void initCamera(final Runnable runnable, final boolean z) {
        if (this.cameraInitied) {
            return;
        }
        if (runnable != null && !this.onFinishCameraInitRunnables.contains(runnable)) {
            this.onFinishCameraInitRunnables.add(runnable);
        }
        if (this.loadingCameras || this.cameraInitied) {
            return;
        }
        this.loadingCameras = true;
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$initCamera$4(z, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initCamera$4(final boolean z, final Runnable runnable) {
        String str;
        Camera.CameraInfo cameraInfo;
        int i;
        int i2;
        String str2;
        final CameraController cameraController = this;
        String str3 = "cameraCache";
        String str4 = "APP_PAUSED";
        try {
            if (cameraController.cameraInfos == null) {
                SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
                String string = globalMainSettings.getString("cameraCache", null);
                CameraController$$ExternalSyntheticLambda18 cameraController$$ExternalSyntheticLambda18 = new Comparator() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda18
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        int lambda$initCamera$0;
                        lambda$initCamera$0 = CameraController.lambda$initCamera$0((Size) obj, (Size) obj2);
                        return lambda$initCamera$0;
                    }
                };
                ArrayList<CameraInfo> arrayList = new ArrayList<>();
                int i3 = 0;
                if (string != null) {
                    SerializedData serializedData = new SerializedData(Base64.decode(string, 0));
                    int readInt32 = serializedData.readInt32(false);
                    for (int i4 = 0; i4 < readInt32; i4++) {
                        CameraInfo cameraInfo2 = new CameraInfo(serializedData.readInt32(false), serializedData.readInt32(false));
                        int readInt322 = serializedData.readInt32(false);
                        for (int i5 = 0; i5 < readInt322; i5++) {
                            cameraInfo2.previewSizes.add(new Size(serializedData.readInt32(false), serializedData.readInt32(false)));
                        }
                        int readInt323 = serializedData.readInt32(false);
                        for (int i6 = 0; i6 < readInt323; i6++) {
                            cameraInfo2.pictureSizes.add(new Size(serializedData.readInt32(false), serializedData.readInt32(false)));
                        }
                        arrayList.add(cameraInfo2);
                        Collections.sort(cameraInfo2.previewSizes, cameraController$$ExternalSyntheticLambda18);
                        Collections.sort(cameraInfo2.pictureSizes, cameraController$$ExternalSyntheticLambda18);
                    }
                    serializedData.cleanup();
                    str = "APP_PAUSED";
                } else {
                    int numberOfCameras = Camera.getNumberOfCameras();
                    Camera.CameraInfo cameraInfo3 = new Camera.CameraInfo();
                    int i7 = 4;
                    int i8 = 0;
                    while (i8 < numberOfCameras) {
                        try {
                            Camera.getCameraInfo(i8, cameraInfo3);
                            CameraInfo cameraInfo4 = new CameraInfo(i8, cameraInfo3.facing);
                            if (ApplicationLoader.mainInterfacePaused && ApplicationLoader.externalInterfacePaused) {
                                throw new RuntimeException(str4);
                            }
                            Camera open = Camera.open(cameraInfo4.getCameraId());
                            Camera.Parameters parameters = open.getParameters();
                            List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
                            int i9 = i3;
                            while (true) {
                                cameraInfo = cameraInfo3;
                                str = str4;
                                if (i9 >= supportedPreviewSizes.size()) {
                                    break;
                                }
                                try {
                                    Camera.Size size = supportedPreviewSizes.get(i9);
                                    int i10 = size.width;
                                    List<Camera.Size> list = supportedPreviewSizes;
                                    if ((i10 != 1280 || size.height == 720) && (i2 = size.height) < 2160 && i10 < 2160) {
                                        str2 = str3;
                                        cameraInfo4.previewSizes.add(new Size(i10, i2));
                                        if (BuildVars.LOGS_ENABLED) {
                                            FileLog.m105d("preview size = " + size.width + " " + size.height);
                                        }
                                        i9++;
                                        cameraInfo3 = cameraInfo;
                                        str4 = str;
                                        supportedPreviewSizes = list;
                                        str3 = str2;
                                    }
                                    str2 = str3;
                                    i9++;
                                    cameraInfo3 = cameraInfo;
                                    str4 = str;
                                    supportedPreviewSizes = list;
                                    str3 = str2;
                                } catch (Exception e) {
                                    e = e;
                                    cameraController = this;
                                    FileLog.m101e(e, !str.equals(e.getMessage()));
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda15
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            CameraController.this.lambda$initCamera$3(z, e, runnable);
                                        }
                                    });
                                    return;
                                }
                            }
                            String str5 = str3;
                            List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
                            while (i < supportedPictureSizes.size()) {
                                Camera.Size size2 = supportedPictureSizes.get(i);
                                i = (size2.width == 1280 && size2.height != 720) ? i + 1 : 0;
                                if (!"samsung".equals(Build.MANUFACTURER) || !"jflteuc".equals(Build.PRODUCT) || size2.width < 2048) {
                                    cameraInfo4.pictureSizes.add(new Size(size2.width, size2.height));
                                    if (BuildVars.LOGS_ENABLED) {
                                        FileLog.m105d("picture size = " + size2.width + " " + size2.height);
                                    }
                                }
                            }
                            open.release();
                            arrayList.add(cameraInfo4);
                            Collections.sort(cameraInfo4.previewSizes, cameraController$$ExternalSyntheticLambda18);
                            Collections.sort(cameraInfo4.pictureSizes, cameraController$$ExternalSyntheticLambda18);
                            i7 += ((cameraInfo4.previewSizes.size() + cameraInfo4.pictureSizes.size()) * 8) + 8;
                            i8++;
                            cameraInfo3 = cameraInfo;
                            str4 = str;
                            str3 = str5;
                            i3 = 0;
                        } catch (Exception e2) {
                            e = e2;
                            str = str4;
                            cameraController = this;
                            FileLog.m101e(e, !str.equals(e.getMessage()));
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda15
                                @Override // java.lang.Runnable
                                public final void run() {
                                    CameraController.this.lambda$initCamera$3(z, e, runnable);
                                }
                            });
                            return;
                        }
                    }
                    String str6 = str3;
                    str = str4;
                    SerializedData serializedData2 = new SerializedData(i7);
                    serializedData2.writeInt32(arrayList.size());
                    for (int i11 = 0; i11 < numberOfCameras; i11++) {
                        CameraInfo cameraInfo5 = arrayList.get(i11);
                        serializedData2.writeInt32(cameraInfo5.cameraId);
                        serializedData2.writeInt32(cameraInfo5.frontCamera);
                        int size3 = cameraInfo5.previewSizes.size();
                        serializedData2.writeInt32(size3);
                        for (int i12 = 0; i12 < size3; i12++) {
                            Size size4 = cameraInfo5.previewSizes.get(i12);
                            serializedData2.writeInt32(size4.mWidth);
                            serializedData2.writeInt32(size4.mHeight);
                        }
                        int size5 = cameraInfo5.pictureSizes.size();
                        serializedData2.writeInt32(size5);
                        for (int i13 = 0; i13 < size5; i13++) {
                            Size size6 = cameraInfo5.pictureSizes.get(i13);
                            serializedData2.writeInt32(size6.mWidth);
                            serializedData2.writeInt32(size6.mHeight);
                        }
                    }
                    globalMainSettings.edit().putString(str6, Base64.encodeToString(serializedData2.toByteArray(), 0)).commit();
                    serializedData2.cleanup();
                    cameraController = this;
                }
                try {
                    cameraController.cameraInfos = arrayList;
                } catch (Exception e3) {
                    e = e3;
                    FileLog.m101e(e, !str.equals(e.getMessage()));
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda15
                        @Override // java.lang.Runnable
                        public final void run() {
                            CameraController.this.lambda$initCamera$3(z, e, runnable);
                        }
                    });
                    return;
                }
            } else {
                str = "APP_PAUSED";
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    CameraController.this.lambda$initCamera$1();
                }
            });
        } catch (Exception e4) {
            e = e4;
            str = "APP_PAUSED";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$initCamera$0(Size size, Size size2) {
        int i = size.mWidth;
        int i2 = size2.mWidth;
        if (i < i2) {
            return 1;
        }
        if (i > i2) {
            return -1;
        }
        int i3 = size.mHeight;
        int i4 = size2.mHeight;
        if (i3 < i4) {
            return 1;
        }
        return i3 > i4 ? -1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initCamera$1() {
        this.loadingCameras = false;
        this.cameraInitied = true;
        if (!this.onFinishCameraInitRunnables.isEmpty()) {
            for (int i = 0; i < this.onFinishCameraInitRunnables.size(); i++) {
                this.onFinishCameraInitRunnables.get(i).run();
            }
            this.onFinishCameraInitRunnables.clear();
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.cameraInitied, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initCamera$3(boolean z, Exception exc, final Runnable runnable) {
        this.onFinishCameraInitRunnables.clear();
        this.loadingCameras = false;
        this.cameraInitied = false;
        if (z || !"APP_PAUSED".equals(exc.getMessage()) || runnable == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$initCamera$2(runnable);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initCamera$2(Runnable runnable) {
        initCamera(runnable, true);
    }

    public boolean isCameraInitied() {
        return (!this.cameraInitied || this.cameraInfos == null || this.cameraInfos.isEmpty()) ? false : true;
    }

    public void close(CameraSession cameraSession, CountDownLatch countDownLatch, Runnable runnable) {
        close(cameraSession, countDownLatch, runnable, null);
    }

    public void close(final CameraSession cameraSession, final CountDownLatch countDownLatch, final Runnable runnable, final Runnable runnable2) {
        cameraSession.destroy();
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.lambda$close$5(runnable, cameraSession, countDownLatch, runnable2);
            }
        });
        if (countDownLatch != null) {
            try {
                countDownLatch.await();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$close$5(Runnable runnable, CameraSession cameraSession, CountDownLatch countDownLatch, Runnable runnable2) {
        if (runnable != null) {
            runnable.run();
        }
        Camera camera = cameraSession.cameraInfo.camera;
        if (camera != null) {
            try {
                camera.stopPreview();
                cameraSession.cameraInfo.camera.setPreviewCallbackWithBuffer(null);
            } catch (Exception e) {
                FileLog.m102e(e);
            }
            try {
                cameraSession.cameraInfo.camera.release();
            } catch (Exception e2) {
                FileLog.m102e(e2);
            }
            cameraSession.cameraInfo.camera = null;
        }
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        if (runnable2 != null) {
            AndroidUtilities.runOnUIThread(runnable2);
        }
    }

    public ArrayList<CameraInfo> getCameras() {
        return this.cameraInfos;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0060, code lost:
        r4 = 0;
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0064, code lost:
        if (r4 <= 8) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0066, code lost:
        r3 = pack(r11, r2, 4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x006d, code lost:
        if (r3 == 1229531648) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0072, code lost:
        if (r3 == 1296891946) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0074, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0075, code lost:
        if (r3 != 1229531648) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0077, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0079, code lost:
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x007a, code lost:
        r5 = pack(r11, r2 + 4, 4, r3) + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0083, code lost:
        if (r5 < 10) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0085, code lost:
        if (r5 <= r4) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0088, code lost:
        r2 = r2 + r5;
        r4 = r4 - r5;
        r5 = pack(r11, r2 - 2, 2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0090, code lost:
        r9 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0092, code lost:
        if (r5 <= 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0096, code lost:
        if (r4 < 12) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009e, code lost:
        if (pack(r11, r2, 2, r3) != 274) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a0, code lost:
        r11 = pack(r11, r2 + 8, 2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a5, code lost:
        if (r11 == 1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a8, code lost:
        if (r11 == 3) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ab, code lost:
        if (r11 == 6) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ad, code lost:
        if (r11 == 8) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00af, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b0, code lost:
        return 270;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b3, code lost:
        return 90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00b6, code lost:
        return 180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b9, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ba, code lost:
        r2 = r2 + 12;
        r4 = r4 - 12;
        r5 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c0, code lost:
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int getOrientation(byte[] r11) {
        /*
            Method dump skipped, instructions count: 193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.camera.CameraController.getOrientation(byte[]):int");
    }

    private static int pack(byte[] bArr, int i, int i2, boolean z) {
        int i3;
        if (z) {
            i += i2 - 1;
            i3 = -1;
        } else {
            i3 = 1;
        }
        int i4 = 0;
        while (true) {
            int i5 = i2 - 1;
            if (i2 <= 0) {
                return i4;
            }
            i4 = (bArr[i] & 255) | (i4 << 8);
            i += i3;
            i2 = i5;
        }
    }

    public boolean takePicture(final File file, final boolean z, CameraSession cameraSession, final Utilities.Callback<Integer> callback) {
        if (cameraSession == null) {
            return false;
        }
        final CameraInfo cameraInfo = cameraSession.cameraInfo;
        final boolean isFlipFront = cameraSession.isFlipFront();
        try {
            cameraInfo.camera.takePicture(null, null, new Camera.PictureCallback() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda1
                @Override // android.hardware.Camera.PictureCallback
                public final void onPictureTaken(byte[] bArr, Camera camera) {
                    CameraController.lambda$takePicture$6(file, cameraInfo, isFlipFront, z, callback, bArr, camera);
                }
            });
            return true;
        } catch (Exception e) {
            FileLog.m102e(e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0 A[Catch: Exception -> 0x00dd, TRY_LEAVE, TryCatch #2 {Exception -> 0x00dd, blocks: (B:10:0x0053, B:29:0x00b6, B:30:0x00b9, B:32:0x00d0), top: B:45:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void lambda$takePicture$6(java.io.File r15, org.telegram.messenger.camera.CameraInfo r16, boolean r17, boolean r18, org.telegram.messenger.Utilities.Callback r19, byte[] r20, android.hardware.Camera r21) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.camera.CameraController.lambda$takePicture$6(java.io.File, org.telegram.messenger.camera.CameraInfo, boolean, boolean, org.telegram.messenger.Utilities$Callback, byte[], android.hardware.Camera):void");
    }

    public void startPreview(final CameraSession cameraSession) {
        if (cameraSession == null) {
            return;
        }
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$startPreview$7(cameraSession);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startPreview$7(CameraSession cameraSession) {
        Camera open;
        CameraInfo cameraInfo = cameraSession.cameraInfo;
        Camera camera = cameraInfo.camera;
        if (camera == null) {
            try {
                open = Camera.open(cameraInfo.cameraId);
                cameraInfo.camera = open;
            } catch (Exception e) {
                e = e;
            }
            try {
                open.setErrorCallback(getErrorListener(cameraSession));
                camera = open;
            } catch (Exception e2) {
                e = e2;
                camera = open;
                cameraSession.cameraInfo.camera = null;
                if (camera != null) {
                    camera.release();
                }
                FileLog.m102e(e);
                return;
            }
        }
        camera.startPreview();
    }

    public void stopPreview(final CameraSession cameraSession) {
        if (cameraSession == null) {
            return;
        }
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$stopPreview$8(cameraSession);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopPreview$8(CameraSession cameraSession) {
        Camera open;
        CameraInfo cameraInfo = cameraSession.cameraInfo;
        Camera camera = cameraInfo.camera;
        if (camera == null) {
            try {
                open = Camera.open(cameraInfo.cameraId);
                cameraInfo.camera = open;
            } catch (Exception e) {
                e = e;
            }
            try {
                open.setErrorCallback(getErrorListener(cameraSession));
                camera = open;
            } catch (Exception e2) {
                e = e2;
                camera = open;
                cameraSession.cameraInfo.camera = null;
                if (camera != null) {
                    camera.release();
                }
                FileLog.m102e(e);
                return;
            }
        }
        camera.stopPreview();
    }

    public void openRound(final CameraSession cameraSession, final SurfaceTexture surfaceTexture, final Runnable runnable, final Runnable runnable2) {
        if (cameraSession == null || surfaceTexture == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("failed to open round " + cameraSession + " tex = " + surfaceTexture);
                return;
            }
            return;
        }
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.lambda$openRound$9(CameraSession.this, runnable2, surfaceTexture, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$openRound$9(CameraSession cameraSession, Runnable runnable, SurfaceTexture surfaceTexture, Runnable runnable2) {
        Camera camera = cameraSession.cameraInfo.camera;
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("start creating round camera session");
            }
            if (camera == null) {
                CameraInfo cameraInfo = cameraSession.cameraInfo;
                Camera open = Camera.open(cameraInfo.cameraId);
                cameraInfo.camera = open;
                camera = open;
            }
            camera.getParameters();
            cameraSession.configureRoundCamera(true);
            if (runnable != null) {
                runnable.run();
            }
            camera.setPreviewTexture(surfaceTexture);
            camera.startPreview();
            if (runnable2 != null) {
                AndroidUtilities.runOnUIThread(runnable2);
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("round camera session created");
            }
        } catch (Exception e) {
            cameraSession.cameraInfo.camera = null;
            if (camera != null) {
                camera.release();
            }
            FileLog.m102e(e);
        }
    }

    public void open(final CameraSession cameraSession, final SurfaceTexture surfaceTexture, final Runnable runnable, final Runnable runnable2) {
        if (cameraSession == null || surfaceTexture == null) {
            return;
        }
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$open$10(cameraSession, runnable2, surfaceTexture, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$open$10(CameraSession cameraSession, Runnable runnable, SurfaceTexture surfaceTexture, Runnable runnable2) {
        CameraInfo cameraInfo = cameraSession.cameraInfo;
        Camera camera = cameraInfo.camera;
        if (camera == null) {
            try {
                Camera open = Camera.open(cameraInfo.cameraId);
                cameraInfo.camera = open;
                camera = open;
            } catch (Exception e) {
                cameraSession.cameraInfo.camera = null;
                if (camera != null) {
                    camera.release();
                }
                FileLog.m102e(e);
                return;
            }
        }
        camera.setErrorCallback(getErrorListener(cameraSession));
        Camera.Parameters parameters = camera.getParameters();
        List<String> supportedFlashModes = parameters.getSupportedFlashModes();
        cameraSession.availableFlashModes.clear();
        if (supportedFlashModes != null) {
            for (int i = 0; i < supportedFlashModes.size(); i++) {
                String str = supportedFlashModes.get(i);
                if (str.equals("off") || str.equals("on") || str.equals(TtmlNode.TEXT_EMPHASIS_AUTO)) {
                    cameraSession.availableFlashModes.add(str);
                }
            }
            if (TextUtils.equals(cameraSession.getCurrentFlashMode(), parameters.getFlashMode()) && cameraSession.availableFlashModes.contains(cameraSession.getCurrentFlashMode())) {
                cameraSession.checkFlashMode(cameraSession.getCurrentFlashMode());
            }
            cameraSession.checkFlashMode(cameraSession.availableFlashModes.get(0));
        }
        if (runnable != null) {
            runnable.run();
        }
        cameraSession.configurePhotoCamera();
        camera.setPreviewTexture(surfaceTexture);
        camera.startPreview();
        if (runnable2 != null) {
            AndroidUtilities.runOnUIThread(runnable2);
        }
    }

    public void recordVideo(CameraSession cameraSession, File file, boolean z, VideoTakeCallback videoTakeCallback, Runnable runnable, ICameraView iCameraView) {
        recordVideo(cameraSession, file, z, videoTakeCallback, runnable, iCameraView, true);
    }

    public void recordVideo(final CameraSession cameraSession, final File file, final boolean z, final VideoTakeCallback videoTakeCallback, final Runnable runnable, final ICameraView iCameraView, final boolean z2) {
        if (cameraSession == null) {
            return;
        }
        final CameraInfo cameraInfo = cameraSession.cameraInfo;
        final Camera camera = cameraInfo.camera;
        if (iCameraView != null) {
            this.recordingCurrentCameraView = iCameraView;
            this.onVideoTakeCallback = videoTakeCallback;
            this.recordedFile = file.getAbsolutePath();
            this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    CameraController.this.lambda$recordVideo$13(camera, cameraSession, iCameraView, file, z2, runnable);
                }
            });
            return;
        }
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$recordVideo$14(camera, cameraSession, z, file, cameraInfo, videoTakeCallback, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recordVideo$13(Camera camera, CameraSession cameraSession, final ICameraView iCameraView, final File file, final boolean z, final Runnable runnable) {
        try {
            if (camera != null) {
                try {
                    Camera.Parameters parameters = camera.getParameters();
                    parameters.setFlashMode(cameraSession.getCurrentFlashMode().equals("on") ? "torch" : "off");
                    camera.setParameters(parameters);
                    cameraSession.onStartRecord();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        CameraController.this.lambda$recordVideo$12(iCameraView, file, z, runnable);
                    }
                });
            }
        } catch (Exception e2) {
            FileLog.m102e(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recordVideo$12(ICameraView iCameraView, File file, final boolean z, Runnable runnable) {
        iCameraView.startRecording(file, new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$recordVideo$11(z);
            }
        });
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$recordVideo$14(Camera camera, CameraSession cameraSession, boolean z, File file, CameraInfo cameraInfo, VideoTakeCallback videoTakeCallback, Runnable runnable) {
        try {
            if (camera != null) {
                try {
                    Camera.Parameters parameters = camera.getParameters();
                    parameters.setFlashMode(cameraSession.getCurrentFlashMode().equals("on") ? "torch" : "off");
                    camera.setParameters(parameters);
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                camera.unlock();
                try {
                    this.mirrorRecorderVideo = z;
                    MediaRecorder mediaRecorder = new MediaRecorder();
                    this.recorder = mediaRecorder;
                    mediaRecorder.setCamera(camera);
                    this.recorder.setVideoSource(1);
                    this.recorder.setAudioSource(5);
                    cameraSession.configureRecorder(1, this.recorder);
                    this.recorder.setOutputFile(file.getAbsolutePath());
                    this.recorder.setMaxFileSize(1073741824L);
                    this.recorder.setVideoFrameRate(30);
                    this.recorder.setMaxDuration(0);
                    Size chooseOptimalSize = chooseOptimalSize(cameraInfo.getPictureSizes(), 720, 480, new Size(16, 9), false);
                    this.recorder.setVideoEncodingBitRate(Math.min(chooseOptimalSize.mHeight, chooseOptimalSize.mWidth) >= 720 ? 3500000 : 1800000);
                    this.recorder.setVideoSize(chooseOptimalSize.getWidth(), chooseOptimalSize.getHeight());
                    this.recorder.setOnInfoListener(this);
                    this.recorder.prepare();
                    this.recorder.start();
                    this.onVideoTakeCallback = videoTakeCallback;
                    this.recordedFile = file.getAbsolutePath();
                    if (runnable != null) {
                        AndroidUtilities.runOnUIThread(runnable);
                    }
                } catch (Exception e2) {
                    this.recorder.release();
                    this.recorder = null;
                    FileLog.m102e(e2);
                }
            }
        } catch (Exception e3) {
            FileLog.m102e(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ae, code lost:
        if (r1 == null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: finishRecordingVideo */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void lambda$recordVideo$11(boolean r12) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.camera.CameraController.lambda$recordVideo$11(boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finishRecordingVideo$15(File file, Bitmap bitmap, long j) {
        String str;
        if (this.onVideoTakeCallback != null) {
            if (file != null) {
                str = file.getAbsolutePath();
                if (bitmap != null) {
                    ImageLoader.getInstance().putImageToCache(new BitmapDrawable(bitmap), Utilities.MD5(str), false);
                }
            } else {
                str = null;
            }
            this.onVideoTakeCallback.onFinishVideoRecording(str, j);
            this.onVideoTakeCallback = null;
        }
    }

    @Override // android.media.MediaRecorder.OnInfoListener
    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
        if (i == 800 || i == 801 || i == 1) {
            MediaRecorder mediaRecorder2 = this.recorder;
            this.recorder = null;
            if (mediaRecorder2 != null) {
                mediaRecorder2.stop();
                mediaRecorder2.release();
            }
            if (this.onVideoTakeCallback != null) {
                lambda$recordVideo$11(true);
            }
        }
    }

    public void stopVideoRecording(CameraSession cameraSession, boolean z) {
        stopVideoRecording(cameraSession, z, true);
    }

    public void stopVideoRecording(final CameraSession cameraSession, final boolean z, final boolean z2) {
        ICameraView iCameraView = this.recordingCurrentCameraView;
        if (iCameraView != null) {
            iCameraView.stopRecording();
            this.recordingCurrentCameraView = null;
            return;
        }
        this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                CameraController.this.lambda$stopVideoRecording$17(cameraSession, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopVideoRecording$17(final CameraSession cameraSession, boolean z, boolean z2) {
        MediaRecorder mediaRecorder;
        try {
            final Camera camera = cameraSession.cameraInfo.camera;
            if (camera != null && (mediaRecorder = this.recorder) != null) {
                this.recorder = null;
                try {
                    mediaRecorder.stop();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                try {
                    mediaRecorder.release();
                } catch (Exception e2) {
                    FileLog.m102e(e2);
                }
                try {
                    camera.reconnect();
                    camera.startPreview();
                } catch (Exception e3) {
                    FileLog.m102e(e3);
                }
                try {
                    cameraSession.stopVideoRecording();
                } catch (Exception e4) {
                    FileLog.m102e(e4);
                }
            }
            try {
                Camera.Parameters parameters = camera.getParameters();
                parameters.setFlashMode("off");
                camera.setParameters(parameters);
            } catch (Exception e5) {
                FileLog.m102e(e5);
            }
            this.threadPool.execute(new Runnable() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CameraController.lambda$stopVideoRecording$16(camera, cameraSession);
                }
            });
            if (!z && this.onVideoTakeCallback != null) {
                lambda$recordVideo$11(z2);
            } else {
                this.onVideoTakeCallback = null;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$stopVideoRecording$16(Camera camera, CameraSession cameraSession) {
        try {
            Camera.Parameters parameters = camera.getParameters();
            parameters.setFlashMode(cameraSession.getCurrentFlashMode());
            camera.setParameters(parameters);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    public static Size chooseOptimalSize(List<Size> list, int i, int i2, Size size, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        int width = size.getWidth();
        int height = size.getHeight();
        for (int i3 = 0; i3 < list.size(); i3++) {
            Size size2 = list.get(i3);
            if (!z || (size2.getHeight() <= i2 && size2.getWidth() <= i)) {
                if (size2.getHeight() == (size2.getWidth() * height) / width && size2.getWidth() >= i && size2.getHeight() >= i2) {
                    arrayList.add(size2);
                } else if (size2.getHeight() * size2.getWidth() <= i * i2 * 4) {
                    arrayList2.add(size2);
                }
            }
        }
        if (arrayList.size() > 0) {
            return (Size) Collections.min(arrayList, new CompareSizesByArea());
        }
        if (arrayList2.size() > 0) {
            return (Size) Collections.min(arrayList2, new CompareSizesByArea());
        }
        return (Size) Collections.max(list, new CompareSizesByArea());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class CompareSizesByArea implements Comparator<Size> {
        CompareSizesByArea() {
        }

        @Override // java.util.Comparator
        public int compare(Size size, Size size2) {
            return Long.signum((size.getWidth() * size.getHeight()) - (size2.getWidth() * size2.getHeight()));
        }
    }

    public void addOnErrorListener(ErrorCallback errorCallback) {
        if (this.errorCallbacks == null) {
            this.errorCallbacks = new ArrayList<>();
        }
        this.errorCallbacks.remove(errorCallback);
        this.errorCallbacks.add(errorCallback);
    }

    public void removeOnErrorListener(ErrorCallback errorCallback) {
        ArrayList<ErrorCallback> arrayList = this.errorCallbacks;
        if (arrayList != null) {
            arrayList.remove(errorCallback);
        }
    }

    public Camera.ErrorCallback getErrorListener(final CameraSession cameraSession) {
        return new Camera.ErrorCallback() { // from class: org.telegram.messenger.camera.CameraController$$ExternalSyntheticLambda0
            @Override // android.hardware.Camera.ErrorCallback
            public final void onError(int i, Camera camera) {
                CameraController.this.lambda$getErrorListener$18(cameraSession, i, camera);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getErrorListener$18(CameraSession cameraSession, int i, Camera camera) {
        if (this.errorCallbacks != null) {
            for (int i2 = 0; i2 < this.errorCallbacks.size(); i2++) {
                ErrorCallback errorCallback = this.errorCallbacks.get(i2);
                if (errorCallback != null) {
                    errorCallback.onError(i, camera, cameraSession);
                }
            }
        }
    }
}
