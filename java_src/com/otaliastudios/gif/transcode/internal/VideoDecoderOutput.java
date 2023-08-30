package com.otaliastudios.gif.transcode.internal;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.SurfaceTexture;
import android.opengl.Matrix;
import android.view.Surface;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.otaliastudios.gif.internal.Logger;
import com.otaliastudios.opengl.draw.GlRect;
import com.otaliastudios.opengl.program.GlTextureProgram;
import com.otaliastudios.opengl.texture.GlTexture;
/* loaded from: classes4.dex */
public class VideoDecoderOutput {
    private static final Logger LOG = new Logger(VideoDecoderOutput.class.getSimpleName());
    private GlRect mDrawable;
    private boolean mFrameAvailable;
    private GlTextureProgram mProgram;
    private Surface mSurface;
    private SurfaceTexture mSurfaceTexture;
    private float mScaleX = 1.0f;
    private float mScaleY = 1.0f;
    private int mRotation = 0;
    private final Object mFrameAvailableLock = new Object();

    public VideoDecoderOutput() {
        GlTexture glTexture = new GlTexture();
        GlTextureProgram glTextureProgram = new GlTextureProgram();
        this.mProgram = glTextureProgram;
        glTextureProgram.setTexture(glTexture);
        this.mDrawable = new GlRect();
        SurfaceTexture surfaceTexture = new SurfaceTexture(glTexture.getId());
        this.mSurfaceTexture = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.otaliastudios.gif.transcode.internal.VideoDecoderOutput.1
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                VideoDecoderOutput.LOG.m707v("New frame available");
                synchronized (VideoDecoderOutput.this.mFrameAvailableLock) {
                    if (!VideoDecoderOutput.this.mFrameAvailable) {
                        VideoDecoderOutput.this.mFrameAvailable = true;
                        VideoDecoderOutput.this.mFrameAvailableLock.notifyAll();
                    } else {
                        throw new RuntimeException("mFrameAvailable already set, frame could be dropped");
                    }
                }
            }
        });
    }

    public void setSize(int i, int i2) {
        this.mSurfaceTexture.setDefaultBufferSize(i, i2);
        this.mSurface = new Surface(this.mSurfaceTexture);
    }

    public void setScale(float f, float f2) {
        this.mScaleX = f;
        this.mScaleY = f2;
    }

    public void setRotation(int i) {
        this.mRotation = i;
    }

    public void release() {
        this.mProgram.release();
        this.mSurface.release();
        this.mSurface = null;
        this.mSurfaceTexture = null;
        this.mDrawable = null;
        this.mProgram = null;
    }

    public void drawFrame(Bitmap bitmap) {
        drawBitmap(bitmap);
        awaitNewFrame();
        renderNewFrame();
    }

    private void drawBitmap(Bitmap bitmap) {
        Canvas lockCanvas = this.mSurface.lockCanvas(null);
        if (bitmap.getWidth() != lockCanvas.getWidth() || bitmap.getHeight() != lockCanvas.getHeight()) {
            throw new RuntimeException("Unexpected width / height. bw:" + bitmap.getWidth() + " bh:" + bitmap.getHeight() + " cw:" + lockCanvas.getWidth() + " ch:" + lockCanvas.getHeight());
        }
        lockCanvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
        this.mSurface.unlockCanvasAndPost(lockCanvas);
    }

    private void awaitNewFrame() {
        synchronized (this.mFrameAvailableLock) {
            while (!this.mFrameAvailable) {
                try {
                    this.mFrameAvailableLock.wait(10000L);
                    if (!this.mFrameAvailable) {
                        throw new RuntimeException("Surface frame wait timed out");
                    }
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
            }
            this.mFrameAvailable = false;
        }
        this.mSurfaceTexture.updateTexImage();
    }

    private void renderNewFrame() {
        this.mSurfaceTexture.getTransformMatrix(this.mProgram.getTextureTransform());
        float f = 1.0f / this.mScaleX;
        float f2 = 1.0f / this.mScaleY;
        Matrix.translateM(this.mProgram.getTextureTransform(), 0, (1.0f - f) / 2.0f, (1.0f - f2) / 2.0f, BitmapDescriptorFactory.HUE_RED);
        Matrix.scaleM(this.mProgram.getTextureTransform(), 0, f, f2, 1.0f);
        Matrix.translateM(this.mProgram.getTextureTransform(), 0, 0.5f, 0.5f, BitmapDescriptorFactory.HUE_RED);
        Matrix.rotateM(this.mProgram.getTextureTransform(), 0, this.mRotation, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        Matrix.translateM(this.mProgram.getTextureTransform(), 0, -0.5f, -0.5f, BitmapDescriptorFactory.HUE_RED);
        this.mProgram.draw(this.mDrawable);
    }
}
