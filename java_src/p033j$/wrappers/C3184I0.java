package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3184I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1231a;

    private /* synthetic */ C3184I0(Collector collector) {
        this.f1231a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3184I0 m229d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3186J0 ? ((AbstractC3186J0) collector).f1233a : new C3184I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m232a() {
        return C3239q.m125a(this.f1231a.accumulator());
    }

    /* renamed from: b */
    public Set m231b() {
        return this.f1231a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2816b m230c() {
        return C3247u.m116a(this.f1231a.combiner());
    }

    /* renamed from: e */
    public Function m228e() {
        return C3189L.m207a(this.f1231a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2839y m227f() {
        return C3256y0.m107a(this.f1231a.supplier());
    }
}
