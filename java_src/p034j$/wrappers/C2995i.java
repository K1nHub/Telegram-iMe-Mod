package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2995i implements InterfaceC2625s.InterfaceC2626a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1182a;

    private /* synthetic */ C2995i(Spliterator.OfDouble ofDouble) {
        this.f1182a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2625s.InterfaceC2626a m147a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C2997j ? ((C2997j) ofDouble).f1184a : new C2995i(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return this.f1182a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ int characteristics() {
        return this.f1182a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a
    /* renamed from: e */
    public /* synthetic */ void mo146e(InterfaceC2592f interfaceC2592f) {
        this.f1182a.forEachRemaining(C2939A.m246a(interfaceC2592f));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long estimateSize() {
        return this.f1182a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1182a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1182a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ Comparator getComparator() {
        return this.f1182a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1182a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1182a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a
    /* renamed from: k */
    public /* synthetic */ boolean mo145k(InterfaceC2592f interfaceC2592f) {
        return this.f1182a.tryAdvance(C2939A.m246a(interfaceC2592f));
    }

    @Override // p034j$.util.InterfaceC2932t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1182a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2625s.InterfaceC2626a, p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s.InterfaceC2626a trySplit() {
        return m147a(this.f1182a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s trySplit() {
        return C2991g.m151a(this.f1182a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2932t, p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2932t trySplit() {
        return C3007o.m128a(this.f1182a.trySplit());
    }
}
