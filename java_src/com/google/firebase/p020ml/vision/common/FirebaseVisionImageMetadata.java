package com.google.firebase.p020ml.vision.common;

import com.google.android.gms.common.internal.Preconditions;
/* renamed from: com.google.firebase.ml.vision.common.FirebaseVisionImageMetadata */
/* loaded from: classes4.dex */
public class FirebaseVisionImageMetadata {
    private final int format;
    private final int height;
    private final int rotation;
    private final int width;

    /* renamed from: com.google.firebase.ml.vision.common.FirebaseVisionImageMetadata$Builder */
    /* loaded from: classes4.dex */
    public static class Builder {
        private int format;
        private int height;
        private int rotation;
        private int width;

        public Builder setWidth(int i) {
            Preconditions.checkArgument(i > 0, "Image buffer width should be positive.");
            this.width = i;
            return this;
        }

        public Builder setHeight(int i) {
            Preconditions.checkArgument(i > 0, "Image buffer height should be positive.");
            this.height = i;
            return this;
        }

        public Builder setRotation(int i) {
            boolean z = true;
            if (i != 0 && i != 1 && i != 2 && i != 3) {
                z = false;
            }
            Preconditions.checkArgument(z);
            this.rotation = i;
            return this;
        }

        public Builder setFormat(int i) {
            Preconditions.checkArgument(i == 842094169 || i == 17);
            this.format = i;
            return this;
        }

        public FirebaseVisionImageMetadata build() {
            return new FirebaseVisionImageMetadata(this.width, this.height, this.rotation, this.format);
        }
    }

    private FirebaseVisionImageMetadata(int i, int i2, int i3, int i4) {
        this.width = i;
        this.height = i2;
        this.rotation = i3;
        this.format = i4;
    }

    public int getWidth() {
        return this.width;
    }

    public int getHeight() {
        return this.height;
    }

    public int getRotation() {
        return this.rotation;
    }

    public int getFormat() {
        return this.format;
    }
}
