package com.google.android.gms.vision.label;

import android.content.Context;
import android.util.SparseArray;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.Detector;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.label.internal.client.ImageLabelerOptions;
import com.google.android.gms.vision.label.internal.client.LabelOptions;
import com.google.android.gms.vision.label.internal.client.zzi;
import java.util.Locale;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes3.dex */
public class ImageLabeler extends Detector<ImageLabel> {
    private static final LabelOptions zzdq = new LabelOptions(-1);
    private final zzi zzdp;

    private ImageLabeler(zzi zziVar) {
        this.zzdp = zziVar;
    }

    @Override // com.google.android.gms.vision.Detector
    @KeepForSdk
    public SparseArray<ImageLabel> detect(Frame frame) {
        return detect(frame, zzdq);
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes3.dex */
    public static class Builder {
        private ImageLabelerOptions zzdr = new ImageLabelerOptions(ImageLabelerOptions.zza(Locale.getDefault().getLanguage()), -1, 0.5f, 1);
        private Context zze;

        @KeepForSdk
        public Builder(Context context) {
            this.zze = context;
        }

        @KeepForSdk
        public Builder setScoreThreshold(float f) {
            if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f) {
                throw new IllegalArgumentException("scoreThreshold should be between [0, 1]");
            }
            this.zzdr.zzeh = f;
            return this;
        }

        @KeepForSdk
        public ImageLabeler build() {
            return new ImageLabeler(new zzi(this.zze, this.zzdr));
        }
    }

    @KeepForSdk
    public SparseArray<ImageLabel> detect(Frame frame, LabelOptions labelOptions) {
        if (frame == null) {
            throw new IllegalArgumentException("No frame supplied.");
        }
        frame.getBitmap();
        throw ImageLabeler$$ExternalSyntheticThrowNSME0.m1061m();
    }

    @Override // com.google.android.gms.vision.Detector
    @KeepForSdk
    public boolean isOperational() {
        return this.zzdp.isOperational();
    }

    @Override // com.google.android.gms.vision.Detector
    @KeepForSdk
    public void release() {
        super.release();
        this.zzdp.zzp();
    }
}
