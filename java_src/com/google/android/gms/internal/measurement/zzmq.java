package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
final class zzmq extends zzmr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmq(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.measurement.zzms.zzi(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
        Caused by: java.lang.ArrayIndexOutOfBoundsException: arraycopy: length -1 is negative
        	at java.base/java.lang.System.arraycopy(Native Method)
        	at java.base/java.util.ArrayList.shiftTailOverGap(ArrayList.java:746)
        	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1691)
        	at java.base/java.util.ArrayList.removeIf(ArrayList.java:1660)
        	at jadx.core.dex.instructions.args.SSAVar.removeUse(SSAVar.java:130)
        	at jadx.core.dex.instructions.args.SSAVar.use(SSAVar.java:123)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:481)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:92)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:484)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1079)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1088)
        	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:115)
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	... 1 more
        */
    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zzc(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.gms.internal.measurement.zzms.zzb
            if (r0 == 0) goto L8
            com.google.android.gms.internal.measurement.zzms.zzi(r2, r3, r5)
            return
        L8:
            com.google.android.gms.internal.measurement.zzms.zzj(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmq.zzc(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zzd(Object obj, long j, byte b) {
        if (zzms.zzb) {
            zzms.zzD(obj, j, b);
        } else {
            zzms.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zze(Object obj, long j, double d) {
        zzo(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final void zzf(Object obj, long j, float f) {
        zzn(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.zzmr
    public final boolean zzg(Object obj, long j) {
        if (zzms.zzb) {
            return zzms.zzt(obj, j);
        }
        return zzms.zzu(obj, j);
    }
}
