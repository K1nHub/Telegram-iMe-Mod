package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2981i implements InterfaceC2611s.InterfaceC2612a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1181a;

    private /* synthetic */ C2981i(Spliterator.OfDouble ofDouble) {
        this.f1181a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2611s.InterfaceC2612a m148a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2983j ? ((C2983j) ofDouble).f1183a : new C2981i(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return this.f1181a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ int characteristics() {
        return this.f1181a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a
    /* renamed from: e */
    public /* synthetic */ void mo147e(InterfaceC2578f interfaceC2578f) {
        this.f1181a.forEachRemaining(C2925A.m247a(interfaceC2578f));
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long estimateSize() {
        return this.f1181a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1181a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1181a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ Comparator getComparator() {
        return this.f1181a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1181a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1181a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a
    /* renamed from: k */
    public /* synthetic */ boolean mo146k(InterfaceC2578f interfaceC2578f) {
        return this.f1181a.tryAdvance(C2925A.m247a(interfaceC2578f));
    }

    @Override // p034j$.util.InterfaceC2918t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1181a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2611s.InterfaceC2612a, p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s.InterfaceC2612a trySplit() {
        return m148a(this.f1181a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2611s trySplit() {
        return C2977g.m152a(this.f1181a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2918t, p034j$.util.InterfaceC2611s
    public /* synthetic */ InterfaceC2918t trySplit() {
        return C2993o.m129a(this.f1181a.trySplit());
    }
}
