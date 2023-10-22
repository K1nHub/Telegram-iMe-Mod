package p033j$.wrappers;

import java.util.Set;
import java.util.stream.Collector;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3170F0 {

    /* renamed from: a */
    final /* synthetic */ Collector f1273a;

    private /* synthetic */ C3170F0(Collector collector) {
        this.f1273a = collector;
    }

    /* renamed from: d */
    public static /* synthetic */ C3170F0 m281d(Collector collector) {
        if (collector == null) {
            return null;
        }
        return collector instanceof AbstractC3172G0 ? ((AbstractC3172G0) collector).f1275a : new C3170F0(collector);
    }

    /* renamed from: a */
    public BiConsumer m284a() {
        return C3228q.m174a(this.f1273a.accumulator());
    }

    /* renamed from: b */
    public Set m283b() {
        return this.f1273a.characteristics();
    }

    /* renamed from: c */
    public InterfaceC2812b m282c() {
        return C3234t.m167a(this.f1273a.combiner());
    }

    /* renamed from: e */
    public Function m280e() {
        return C$r8$wrapper$java$util$function$Function$VWRP.convert(this.f1273a.finisher());
    }

    /* renamed from: f */
    public InterfaceC2834x m279f() {
        return C3239v0.m162a(this.f1273a.supplier());
    }
}
