package org.telegram.p048ui.Components;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.WindowManager;
import org.telegram.messenger.AndroidUtilities;
/* renamed from: org.telegram.ui.Components.WallpaperParallaxEffect */
/* loaded from: classes6.dex */
public class WallpaperParallaxEffect implements SensorEventListener {
    private Sensor accelerometer;
    private int bufferOffset;
    private Callback callback;
    private boolean enabled;
    private SensorManager sensorManager;

    /* renamed from: wm */
    private WindowManager f1826wm;
    private float[] rollBuffer = new float[3];
    private float[] pitchBuffer = new float[3];

    /* renamed from: org.telegram.ui.Components.WallpaperParallaxEffect$Callback */
    /* loaded from: classes6.dex */
    public interface Callback {
        void onOffsetsChanged(int i, int i2, float f);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public WallpaperParallaxEffect(Context context) {
        this.f1826wm = (WindowManager) context.getSystemService("window");
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.sensorManager = sensorManager;
        this.accelerometer = sensorManager.getDefaultSensor(1);
    }

    public void setEnabled(boolean z) {
        if (this.enabled != z) {
            this.enabled = z;
            Sensor sensor = this.accelerometer;
            if (sensor == null) {
                return;
            }
            if (z) {
                this.sensorManager.registerListener(this, sensor, 1);
            } else {
                this.sensorManager.unregisterListener(this);
            }
        }
    }

    public void setCallback(Callback callback) {
        this.callback = callback;
    }

    public float getScale(int i, int i2) {
        float f = i;
        float m50dp = AndroidUtilities.m50dp(16) * 2;
        float f2 = (f + m50dp) / f;
        float f3 = i2;
        return Math.max(f2, (m50dp + f3) / f3);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // android.hardware.SensorEventListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onSensorChanged(android.hardware.SensorEvent r17) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p048ui.Components.WallpaperParallaxEffect.onSensorChanged(android.hardware.SensorEvent):void");
    }
}
