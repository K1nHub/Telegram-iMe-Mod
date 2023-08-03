package com.google.android.gms.internal.wearable;

import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
/* loaded from: classes3.dex */
final class zzel extends zzen {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzel(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.wearable.zzeo.zzi(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
        Caused by: java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1013)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:967)
        	at jadx.core.dex.instructions.args.SSAVar.updateUsedInPhiList(SSAVar.java:151)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:482)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:92)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:484)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1079)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1088)
        	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:115)
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	... 1 more
        */
    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zzc(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.gms.internal.wearable.zzeo.zzb
            if (r0 == 0) goto L8
            com.google.android.gms.internal.wearable.zzeo.zzi(r2, r3, r5)
            return
        L8:
            com.google.android.gms.internal.wearable.zzeo.zzj(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.wearable.zzel.zzc(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zzd(Object obj, long j, byte b) {
        if (zzeo.zzb) {
            zzeo.zzD(obj, j, b);
        } else {
            zzeo.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.wearable.zzen
    public final boolean zzg(Object obj, long j) {
        if (zzeo.zzb) {
            return zzeo.zzt(obj, j);
        }
        return zzeo.zzu(obj, j);
    }
}
