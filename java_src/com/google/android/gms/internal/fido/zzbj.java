package com.google.android.gms.internal.fido;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
/* loaded from: classes.dex */
final class zzbj extends zzbk {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbj(java.lang.String r2, java.lang.String r3, java.lang.Character r4) {
        /*
            r1 = this;
            com.google.android.gms.internal.fido.zzbh r0 = new com.google.android.gms.internal.fido.zzbh
            char[] r3 = r3.toCharArray()
            r0.<init>(r2, r3)
            r1.<init>(r0, r4)
            char[] r2 = com.google.android.gms.internal.fido.zzbh.zzc(r0)
            int r2 = r2.length
            r3 = 64
            if (r2 != r3) goto L17
            r2 = 1
            goto L18
        L17:
            r2 = 0
        L18:
            com.google.android.gms.internal.fido.zzas.zzc(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fido.zzbj.<init>(java.lang.String, java.lang.String, java.lang.Character):void");
    }

    @Override // com.google.android.gms.internal.fido.zzbk, com.google.android.gms.internal.fido.zzbl
    final void zza(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzas.zze(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            int i5 = i3 + 1;
            int i6 = i5 + 1;
            int i7 = ((bArr[i3] & 255) << 16) | ((bArr[i5] & 255) << 8) | (bArr[i6] & 255);
            appendable.append(this.zzb.zza(i7 >>> 18));
            appendable.append(this.zzb.zza((i7 >>> 12) & 63));
            appendable.append(this.zzb.zza((i7 >>> 6) & 63));
            appendable.append(this.zzb.zza(i7 & 63));
            i3 = i6 + 1;
        }
        if (i3 < i2) {
            zzc(appendable, bArr, i3, i2 - i3);
        }
    }
}
