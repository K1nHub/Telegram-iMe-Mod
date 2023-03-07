package com.google.firebase.p021ml.vision.common;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzqm;
import com.google.android.gms.internal.firebase_ml.zzqo;
import com.google.android.gms.vision.Frame;
import com.google.firebase.p021ml.vision.common.FirebaseVisionImageMetadata;
import java.nio.ByteBuffer;
/* renamed from: com.google.firebase.ml.vision.common.FirebaseVisionImage */
/* loaded from: classes3.dex */
public class FirebaseVisionImage {
    private volatile Bitmap zzbav;
    private volatile ByteBuffer zzbaw;
    private volatile FirebaseVisionImageMetadata zzbax;
    private volatile Frame zzbay;
    private volatile byte[] zzbaz;
    private final long zzbba;

    private final Bitmap zznl() {
        if (this.zzbav != null) {
            return this.zzbav;
        }
        synchronized (this) {
            if (this.zzbav == null) {
                byte[] zzai = zzai(false);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(zzai, 0, zzai.length);
                if (this.zzbax != null) {
                    decodeByteArray = zza(decodeByteArray, this.zzbax.getRotation());
                }
                this.zzbav = decodeByteArray;
            }
        }
        return this.zzbav;
    }

    private static Bitmap zza(Bitmap bitmap, int i) {
        int zzbn = zzqm.zzbn(i);
        if (zzbn == 0) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(zzbn);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    public final Pair<byte[], Float> zzf(int i, int i2) {
        int width;
        int height;
        byte[] zzai;
        if (this.zzbax != null) {
            boolean z = this.zzbax.getRotation() == 1 || this.zzbax.getRotation() == 3;
            FirebaseVisionImageMetadata firebaseVisionImageMetadata = this.zzbax;
            width = z ? firebaseVisionImageMetadata.getHeight() : firebaseVisionImageMetadata.getWidth();
            height = z ? this.zzbax.getWidth() : this.zzbax.getHeight();
        } else {
            width = zznl().getWidth();
            height = zznl().getHeight();
        }
        float min = Math.min(i / width, i2 / height);
        if (min < 1.0f) {
            Bitmap zznl = zznl();
            Matrix matrix = new Matrix();
            matrix.postScale(min, min);
            zzai = zzqo.zzb(Bitmap.createBitmap(zznl, 0, 0, this.zzbav.getWidth(), this.zzbav.getHeight(), matrix, true));
        } else {
            zzai = zzai(true);
            min = 1.0f;
        }
        return Pair.create(zzai, Float.valueOf(min));
    }

    private final byte[] zzai(boolean z) {
        if (this.zzbaz != null) {
            return this.zzbaz;
        }
        synchronized (this) {
            if (this.zzbaz != null) {
                return this.zzbaz;
            } else if (this.zzbaw != null && (!z || this.zzbax.getRotation() == 0)) {
                byte[] zza = zzqo.zza(this.zzbaw);
                int format = this.zzbax.getFormat();
                if (format != 17) {
                    if (format == 842094169) {
                        zza = zzqo.zzf(zza);
                    } else {
                        throw new IllegalStateException("Must be one of: IMAGE_FORMAT_NV21, IMAGE_FORMAT_YV12");
                    }
                }
                byte[] zza2 = zzqo.zza(zza, this.zzbax.getWidth(), this.zzbax.getHeight());
                if (this.zzbax.getRotation() == 0) {
                    this.zzbaz = zza2;
                }
                return zza2;
            } else {
                byte[] zzb = zzqo.zzb(zznl());
                this.zzbaz = zzb;
                return zzb;
            }
        }
    }

    public final synchronized Frame zzb(boolean z, boolean z2) {
        int i = 0;
        Preconditions.checkArgument((z && z2) ? false : true, "Can't restrict to bitmap-only and NV21 byte buffer-only");
        if (this.zzbay == null) {
            Frame.Builder builder = new Frame.Builder();
            if (this.zzbaw != null && !z) {
                int i2 = 842094169;
                if (z2 && this.zzbax.getFormat() != 17) {
                    if (this.zzbax.getFormat() == 842094169) {
                        this.zzbaw = ByteBuffer.wrap(zzqo.zzf(zzqo.zza(this.zzbaw)));
                        this.zzbax = new FirebaseVisionImageMetadata.Builder().setFormat(17).setWidth(this.zzbax.getWidth()).setHeight(this.zzbax.getHeight()).setRotation(this.zzbax.getRotation()).build();
                    } else {
                        throw new IllegalStateException("Must be one of: IMAGE_FORMAT_NV21, IMAGE_FORMAT_YV12");
                    }
                }
                ByteBuffer byteBuffer = this.zzbaw;
                int width = this.zzbax.getWidth();
                int height = this.zzbax.getHeight();
                int format = this.zzbax.getFormat();
                if (format == 17) {
                    i2 = 17;
                } else if (format != 842094169) {
                    i2 = 0;
                }
                builder.setImageData(byteBuffer, width, height, i2);
                int rotation = this.zzbax.getRotation();
                if (rotation != 0) {
                    if (rotation == 1) {
                        i = 1;
                    } else if (rotation == 2) {
                        i = 2;
                    } else if (rotation != 3) {
                        StringBuilder sb = new StringBuilder(29);
                        sb.append("Invalid rotation: ");
                        sb.append(rotation);
                        throw new IllegalArgumentException(sb.toString());
                    } else {
                        i = 3;
                    }
                }
                builder.setRotation(i);
            } else {
                builder.setBitmap(zznl());
            }
            builder.setTimestampMillis(this.zzbba);
            this.zzbay = builder.build();
        }
        return this.zzbay;
    }

    static {
        zzqo.zzno();
    }
}
