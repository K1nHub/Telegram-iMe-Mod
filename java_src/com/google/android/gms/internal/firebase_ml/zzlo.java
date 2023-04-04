package com.google.android.gms.internal.firebase_ml;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import p035j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
final class zzlo {
    private final ConcurrentHashMap<zzlr, List<Throwable>> zzacw = new ConcurrentHashMap<>(16, 0.75f, 10);
    private final ReferenceQueue<Throwable> zzacx = new ReferenceQueue<>();

    public final List<Throwable> zza(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.zzacx.poll();
        while (poll != null) {
            this.zzacw.remove(poll);
            poll = this.zzacx.poll();
        }
        List<Throwable> list = this.zzacw.get(new zzlr(th, null));
        if (z && list == null) {
            Vector vector = new Vector(2);
            List<Throwable> putIfAbsent = this.zzacw.putIfAbsent(new zzlr(th, this.zzacx), vector);
            return putIfAbsent == null ? vector : putIfAbsent;
        }
        return list;
    }
}
