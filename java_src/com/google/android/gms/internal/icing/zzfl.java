package com.google.android.gms.internal.icing;

import sun.misc.Unsafe;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
final class zzfl extends zzfm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfl(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zza(Object obj, long j, byte b) {
        if (zzfn.zzb) {
            zzfn.zzD(obj, j, b);
        } else {
            zzfn.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final boolean zzb(Object obj, long j) {
        if (zzfn.zzb) {
            return zzfn.zzv(obj, j);
        }
        return zzfn.zzw(obj, j);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: com.google.android.gms.internal.icing.zzfn.zzy(java.lang.Object, long, boolean):void
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
        Caused by: java.lang.ArrayIndexOutOfBoundsException: Index -1 out of bounds for length 2
        	at java.base/java.util.ArrayList.add(ArrayList.java:487)
        	at java.base/java.util.ArrayList.add(ArrayList.java:499)
        	at jadx.core.dex.instructions.args.SSAVar.use(SSAVar.java:126)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:481)
        	at jadx.core.dex.instructions.mods.TernaryInsn.rebindArgs(TernaryInsn.java:92)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:484)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1079)
        	at jadx.core.utils.BlockUtils.replaceInsn(BlockUtils.java:1088)
        	at jadx.core.dex.visitors.InlineMethods.inlineMethod(InlineMethods.java:115)
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:74)
        	... 1 more
        */
    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zzc(java.lang.Object r2, long r3, boolean r5) {
        /*
            r1 = this;
            boolean r0 = com.google.android.gms.internal.icing.zzfn.zzb
            if (r0 == 0) goto L8
            com.google.android.gms.internal.icing.zzfn.zzx(r2, r3, r5)
            return
        L8:
            com.google.android.gms.internal.icing.zzfn.zzy(r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzfl.zzc(java.lang.Object, long, boolean):void");
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final float zzd(Object obj, long j) {
        return Float.intBitsToFloat(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zze(Object obj, long j, float f) {
        zzl(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final double zzf(Object obj, long j) {
        return Double.longBitsToDouble(zzm(obj, j));
    }

    @Override // com.google.android.gms.internal.icing.zzfm
    public final void zzg(Object obj, long j, double d) {
        zzn(obj, j, Double.doubleToLongBits(d));
    }
}
