package com.google.android.gms.vision;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.media.Image;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* loaded from: classes3.dex */
public class Frame {
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;
    private final Metadata zza;
    private ByteBuffer zzb;
    private zza zzc;
    private Bitmap zzd;

    @RecentlyNonNull
    public Metadata getMetadata() {
        return this.zza;
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* loaded from: classes3.dex */
    public static class Builder {
        private final Frame zza = new Frame();

        @RecentlyNonNull
        public Builder setBitmap(@RecentlyNonNull Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            this.zza.zzd = bitmap;
            Metadata metadata = this.zza.getMetadata();
            metadata.zza = width;
            metadata.zzb = height;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setPlanes(@RecentlyNonNull Image.Plane[] planeArr, int i, int i2, int i3) {
            if (planeArr == null) {
                throw new IllegalArgumentException("Null image data supplied.");
            }
            if (planeArr.length != 3) {
                throw new IllegalArgumentException("Only android.graphics.ImageFormat#YUV_420_888 is supported which should have 3 planes.");
            }
            if (planeArr[0].getBuffer().capacity() < i * i2) {
                throw new IllegalArgumentException("Invalid image data size.");
            }
            this.zza.zzc = new zza(planeArr);
            Metadata metadata = this.zza.getMetadata();
            metadata.zza = i;
            metadata.zzb = i2;
            metadata.zzf = i3;
            return this;
        }

        @RecentlyNonNull
        public Builder setImageData(@RecentlyNonNull ByteBuffer byteBuffer, int i, int i2, int i3) {
            if (byteBuffer == null) {
                throw new IllegalArgumentException("Null image data supplied.");
            }
            if (byteBuffer.capacity() >= i * i2) {
                if (i3 != 16 && i3 != 17 && i3 != 842094169) {
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Unsupported image format: ");
                    sb.append(i3);
                    throw new IllegalArgumentException(sb.toString());
                }
                this.zza.zzb = byteBuffer;
                Metadata metadata = this.zza.getMetadata();
                metadata.zza = i;
                metadata.zzb = i2;
                metadata.zzf = i3;
                return this;
            }
            throw new IllegalArgumentException("Invalid image data size.");
        }

        @RecentlyNonNull
        public Builder setId(int i) {
            this.zza.getMetadata().zzc = i;
            return this;
        }

        @RecentlyNonNull
        public Builder setTimestampMillis(long j) {
            this.zza.getMetadata().zzd = j;
            return this;
        }

        @RecentlyNonNull
        public Builder setRotation(int i) {
            this.zza.getMetadata().zze = i;
            return this;
        }

        @RecentlyNonNull
        public Frame build() {
            if (this.zza.zzb == null && this.zza.zzd == null && this.zza.zzc == null) {
                throw new IllegalStateException("Missing image data.  Call either setBitmap or setImageData to specify the image");
            }
            return this.zza;
        }
    }

    @RecentlyNullable
    @KeepForSdk
    public Image.Plane[] getPlanes() {
        zza zzaVar = this.zzc;
        if (zzaVar == null) {
            return null;
        }
        return zzaVar.zza();
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* loaded from: classes3.dex */
    public static class Metadata {
        private int zza;
        private int zzb;
        private int zzc;
        private long zzd;
        private int zze;
        private int zzf;

        public Metadata() {
            this.zzf = -1;
        }

        public Metadata(@RecentlyNonNull Metadata metadata) {
            this.zzf = -1;
            this.zza = metadata.getWidth();
            this.zzb = metadata.getHeight();
            this.zzc = metadata.getId();
            this.zzd = metadata.getTimestampMillis();
            this.zze = metadata.getRotation();
            this.zzf = metadata.getFormat();
        }

        public int getWidth() {
            return this.zza;
        }

        public int getHeight() {
            return this.zzb;
        }

        public int getId() {
            return this.zzc;
        }

        public long getTimestampMillis() {
            return this.zzd;
        }

        public int getRotation() {
            return this.zze;
        }

        public int getFormat() {
            return this.zzf;
        }

        public final void zza() {
            if (this.zze % 2 != 0) {
                int i = this.zza;
                this.zza = this.zzb;
                this.zzb = i;
            }
            this.zze = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* loaded from: classes3.dex */
    public static class zza {
        private final Image.Plane[] zza;

        zza(Image.Plane[] planeArr) {
            this.zza = planeArr;
        }

        final Image.Plane[] zza() {
            return this.zza;
        }
    }

    @RecentlyNullable
    public ByteBuffer getGrayscaleImageData() {
        Bitmap bitmap = this.zzd;
        if (bitmap != null) {
            if (bitmap == null) {
                return null;
            }
            int width = bitmap.getWidth();
            int height = this.zzd.getHeight();
            int i = width * height;
            int[] iArr = new int[i];
            this.zzd.getPixels(iArr, 0, width, 0, 0, width, height);
            byte[] bArr = new byte[i];
            for (int i2 = 0; i2 < i; i2++) {
                bArr[i2] = (byte) ((Color.red(iArr[i2]) * 0.299f) + (Color.green(iArr[i2]) * 0.587f) + (Color.blue(iArr[i2]) * 0.114f));
            }
            return ByteBuffer.wrap(bArr);
        }
        return this.zzb;
    }

    @RecentlyNullable
    public Bitmap getBitmap() {
        return this.zzd;
    }

    private Frame() {
        this.zza = new Metadata();
        this.zzb = null;
        this.zzc = null;
        this.zzd = null;
    }
}
