package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.wrappers.I0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3239I0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1232a;

    private /* synthetic */ C3239I0(Collector collector) {
        this.f1232a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3239I0 m229d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3241J0 ? ((AbstractC3241J0) collector).f1234a : new C3239I0(collector);
    }

    /* renamed from: a */
    public BiConsumer m232a() {
        return C3294q.m125a(this.f1232a.accumulator());
    }

    /* renamed from: b */
    public Set m231b() {
        return this.f1232a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2871b m230c() {
        return C3302u.m116a(this.f1232a.combiner());
    }

    /* renamed from: e */
    public Function m228e() {
        return C3244L.m207a(this.f1232a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2894y m227f() {
        return C3311y0.m107a(this.f1232a.supplier());
    }
}
