package com.google.android.gms.internal.firebase_ml;
/* loaded from: classes.dex */
public final class zzlm {
    private static final zzlp zzacu;
    private static final int zzacv;

    public static void zza(Throwable th, Throwable th2) {
        zzacu.zza(th, th2);
    }

    /* loaded from: classes.dex */
    static final class zza extends zzlp {
        zza() {
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzlp
        public final void zza(Throwable th, Throwable th2) {
        }

        @Override // com.google.android.gms.internal.firebase_ml.zzlp
        public final void zzb(Throwable th) {
            th.printStackTrace();
        }
    }

    public static void zzb(Throwable th) {
        zzacu.zzb(th);
    }

    private static Integer zzii() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    static {
        /*
            r0 = 1
            java.lang.Integer r1 = zzii()     // Catch: java.lang.Throwable -> L2c
            if (r1 == 0) goto L15
            int r2 = r1.intValue()     // Catch: java.lang.Throwable -> L2a
            r3 = 19
            if (r2 < r3) goto L15
            com.google.android.gms.internal.firebase_ml.zzls r2 = new com.google.android.gms.internal.firebase_ml.zzls     // Catch: java.lang.Throwable -> L2a
            r2.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L5f
        L15:
            java.lang.String r2 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r2 = java.lang.Boolean.getBoolean(r2)     // Catch: java.lang.Throwable -> L2a
            r2 = r2 ^ r0
            if (r2 == 0) goto L24
            com.google.android.gms.internal.firebase_ml.zzlq r2 = new com.google.android.gms.internal.firebase_ml.zzlq     // Catch: java.lang.Throwable -> L2a
            r2.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L5f
        L24:
            com.google.android.gms.internal.firebase_ml.zzlm$zza r2 = new com.google.android.gms.internal.firebase_ml.zzlm$zza     // Catch: java.lang.Throwable -> L2a
            r2.<init>()     // Catch: java.lang.Throwable -> L2a
            goto L5f
        L2a:
            r2 = move-exception
            goto L2e
        L2c:
            r2 = move-exception
            r1 = 0
        L2e:
            java.io.PrintStream r3 = java.lang.System.err
            java.lang.Class<com.google.android.gms.internal.firebase_ml.zzlm$zza> r4 = com.google.android.gms.internal.firebase_ml.zzlm.zza.class
            java.lang.String r4 = r4.getName()
            int r5 = r4.length()
            int r5 = r5 + 133
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>(r5)
            java.lang.String r5 = "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "
            r6.append(r5)
            r6.append(r4)
            java.lang.String r4 = "will be used. The error is: "
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            r3.println(r4)
            java.io.PrintStream r3 = java.lang.System.err
            r2.printStackTrace(r3)
            com.google.android.gms.internal.firebase_ml.zzlm$zza r2 = new com.google.android.gms.internal.firebase_ml.zzlm$zza
            r2.<init>()
        L5f:
            com.google.android.gms.internal.firebase_ml.zzlm.zzacu = r2
            if (r1 != 0) goto L64
            goto L68
        L64:
            int r0 = r1.intValue()
        L68:
            com.google.android.gms.internal.firebase_ml.zzlm.zzacv = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzlm.<clinit>():void");
    }
}
