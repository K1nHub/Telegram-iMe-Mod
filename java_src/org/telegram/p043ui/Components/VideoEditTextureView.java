package org.telegram.p043ui.Components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.TextureView;
import org.telegram.p043ui.Components.BlurringShader;
import org.telegram.p043ui.Components.FilterGLThread;
import org.telegram.p043ui.Stories.recorder.StoryEntry;
/* renamed from: org.telegram.ui.Components.VideoEditTextureView */
/* loaded from: classes6.dex */
public class VideoEditTextureView extends TextureView implements TextureView.SurfaceTextureListener {
    private VideoPlayer currentVideoPlayer;
    private VideoEditTextureViewDelegate delegate;
    private FilterGLThread eglThread;
    private int gradientBottom;
    private int gradientTop;
    public StoryEntry.HDRInfo hdrInfo;
    private BlurringShader.BlurManager uiBlurManager;
    private int videoHeight;
    private int videoWidth;
    private Rect viewRect;

    /* renamed from: org.telegram.ui.Components.VideoEditTextureView$VideoEditTextureViewDelegate */
    /* loaded from: classes6.dex */
    public interface VideoEditTextureViewDelegate {
        void onEGLThreadAvailable(FilterGLThread filterGLThread);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void setHDRInfo(StoryEntry.HDRInfo hDRInfo) {
        this.hdrInfo = hDRInfo;
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.updateHDRInfo(hDRInfo);
        }
    }

    public VideoEditTextureView(Context context, VideoPlayer videoPlayer) {
        super(context);
        this.viewRect = new Rect();
        this.currentVideoPlayer = videoPlayer;
        setSurfaceTextureListener(this);
    }

    public void setDelegate(VideoEditTextureViewDelegate videoEditTextureViewDelegate) {
        this.delegate = videoEditTextureViewDelegate;
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            if (videoEditTextureViewDelegate == null) {
                filterGLThread.setFilterGLThreadDelegate(null);
            } else {
                videoEditTextureViewDelegate.onEGLThreadAvailable(filterGLThread);
            }
        }
    }

    public void setVideoSize(int i, int i2) {
        this.videoWidth = i;
        this.videoHeight = i2;
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread == null) {
            return;
        }
        filterGLThread.setVideoSize(i, i2);
    }

    public int getVideoWidth() {
        return this.videoWidth;
    }

    public int getVideoHeight() {
        return this.videoHeight;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        int i3;
        if (this.eglThread != null || surfaceTexture == null || this.currentVideoPlayer == null) {
            return;
        }
        FilterGLThread filterGLThread = new FilterGLThread(surfaceTexture, new FilterGLThread.FilterGLThreadVideoDelegate() { // from class: org.telegram.ui.Components.VideoEditTextureView$$ExternalSyntheticLambda1
            @Override // org.telegram.p043ui.Components.FilterGLThread.FilterGLThreadVideoDelegate
            public final void onVideoSurfaceCreated(SurfaceTexture surfaceTexture2) {
                VideoEditTextureView.this.lambda$onSurfaceTextureAvailable$0(surfaceTexture2);
            }
        }, this.hdrInfo, this.uiBlurManager, i, i2);
        this.eglThread = filterGLThread;
        filterGLThread.updateUiBlurGradient(this.gradientTop, this.gradientBottom);
        this.eglThread.updateUiBlurManager(this.uiBlurManager);
        int i4 = this.videoWidth;
        if (i4 != 0 && (i3 = this.videoHeight) != 0) {
            this.eglThread.setVideoSize(i4, i3);
        }
        this.eglThread.requestRender(true, true, false);
        VideoEditTextureViewDelegate videoEditTextureViewDelegate = this.delegate;
        if (videoEditTextureViewDelegate != null) {
            videoEditTextureViewDelegate.onEGLThreadAvailable(this.eglThread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSurfaceTextureAvailable$0(SurfaceTexture surfaceTexture) {
        if (this.currentVideoPlayer == null) {
            return;
        }
        this.currentVideoPlayer.setSurface(new Surface(surfaceTexture));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.setSurfaceTextureSize(i, i2);
            this.eglThread.requestRender(false, true, false);
            this.eglThread.postRunnable(new Runnable() { // from class: org.telegram.ui.Components.VideoEditTextureView$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoEditTextureView.this.lambda$onSurfaceTextureSizeChanged$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSurfaceTextureSizeChanged$1() {
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.requestRender(false, true, false);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.shutdown();
            this.eglThread = null;
            return true;
        }
        return true;
    }

    public void release() {
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.shutdown();
        }
        this.currentVideoPlayer = null;
    }

    public void setViewRect(float f, float f2, float f3, float f4) {
        Rect rect = this.viewRect;
        rect.f1942x = f;
        rect.f1943y = f2;
        rect.width = f3;
        rect.height = f4;
    }

    public boolean containsPoint(float f, float f2) {
        Rect rect = this.viewRect;
        float f3 = rect.f1942x;
        if (f >= f3 && f <= f3 + rect.width) {
            float f4 = rect.f1943y;
            if (f2 >= f4 && f2 <= f4 + rect.height) {
                return true;
            }
        }
        return false;
    }

    public Bitmap getUiBlurBitmap() {
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread == null) {
            return null;
        }
        return filterGLThread.getUiBlurBitmap();
    }

    @Override // android.view.TextureView
    public void setTransform(Matrix matrix) {
        super.setTransform(matrix);
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.updateUiBlurTransform(matrix, getWidth(), getHeight());
        }
    }

    public void updateUiBlurGradient(int i, int i2) {
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread == null) {
            this.gradientTop = i;
            this.gradientBottom = i2;
            return;
        }
        filterGLThread.updateUiBlurGradient(i, i2);
    }

    public void updateUiBlurManager(BlurringShader.BlurManager blurManager) {
        this.uiBlurManager = blurManager;
        FilterGLThread filterGLThread = this.eglThread;
        if (filterGLThread != null) {
            filterGLThread.updateUiBlurManager(blurManager);
        }
    }
}
