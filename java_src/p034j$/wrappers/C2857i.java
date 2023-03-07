package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2857i implements InterfaceC2487s.InterfaceC2488a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1176a;

    private /* synthetic */ C2857i(Spliterator.OfDouble ofDouble) {
        this.f1176a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2487s.InterfaceC2488a m148a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2859j ? ((C2859j) ofDouble).f1178a : new C2857i(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1176a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ int characteristics() {
        return this.f1176a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a
    /* renamed from: e */
    public /* synthetic */ void mo147e(InterfaceC2454f interfaceC2454f) {
        this.f1176a.forEachRemaining(C2801A.m247a(interfaceC2454f));
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long estimateSize() {
        return this.f1176a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1176a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1176a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ Comparator getComparator() {
        return this.f1176a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1176a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1176a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a
    /* renamed from: k */
    public /* synthetic */ boolean mo146k(InterfaceC2454f interfaceC2454f) {
        return this.f1176a.tryAdvance(C2801A.m247a(interfaceC2454f));
    }

    @Override // p034j$.util.InterfaceC2794t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1176a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s.InterfaceC2488a trySplit() {
        return m148a(this.f1176a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2487s trySplit() {
        return C2853g.m152a(this.f1176a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2487s.InterfaceC2488a, p034j$.util.InterfaceC2794t, p034j$.util.InterfaceC2487s
    public /* synthetic */ InterfaceC2794t trySplit() {
        return C2869o.m129a(this.f1176a.trySplit());
    }
}
