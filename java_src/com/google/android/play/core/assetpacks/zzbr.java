package com.google.android.play.core.assetpacks;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes3.dex */
final class zzbr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i) {
        return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzc(byte[] bArr, int i) {
        return ((zza(bArr, i + 2) << 16) | zza(bArr, i)) & 4294967295L;
    }
}
