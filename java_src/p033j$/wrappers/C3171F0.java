package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3171F0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1273a;

    private /* synthetic */ C3171F0(Collector collector) {
        this.f1273a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3171F0 m282d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3173G0 ? ((AbstractC3173G0) collector).f1275a : new C3171F0(collector);
    }

    /* renamed from: a */
    public BiConsumer m285a() {
        return C3229q.m175a(this.f1273a.accumulator());
    }

    /* renamed from: b */
    public Set m284b() {
        return this.f1273a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2813b m283c() {
        return C3235t.m169a(this.f1273a.combiner());
    }

    /* renamed from: e */
    public Function m281e() {
        return C$r8$wrapper$java$util$function$Function$VWRP.convert(this.f1273a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2835x m280f() {
        return C3240v0.m164a(this.f1273a.supplier());
    }
}
