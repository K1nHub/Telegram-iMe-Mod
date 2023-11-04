package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3174F0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1273a;

    private /* synthetic */ C3174F0(Collector collector) {
        this.f1273a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3174F0 m282d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3176G0 ? ((AbstractC3176G0) collector).f1275a : new C3174F0(collector);
    }

    /* renamed from: a */
    public BiConsumer m285a() {
        return C3232q.m175a(this.f1273a.accumulator());
    }

    /* renamed from: b */
    public Set m284b() {
        return this.f1273a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2816b m283c() {
        return C3238t.m169a(this.f1273a.combiner());
    }

    /* renamed from: e */
    public Function m281e() {
        return C$r8$wrapper$java$util$function$Function$VWRP.convert(this.f1273a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2838x m280f() {
        return C3243v0.m164a(this.f1273a.supplier());
    }
}
