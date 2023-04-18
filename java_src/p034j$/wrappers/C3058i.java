package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3058i implements InterfaceC2688s.InterfaceC2689a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1182a;

    private /* synthetic */ C3058i(Spliterator.OfDouble ofDouble) {
        this.f1182a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2688s.InterfaceC2689a m128a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3060j ? ((C3060j) ofDouble).f1184a : new C3058i(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return this.f1182a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ int characteristics() {
        return this.f1182a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a
    /* renamed from: e */
    public /* synthetic */ void mo127e(InterfaceC2655f interfaceC2655f) {
        this.f1182a.forEachRemaining(C3002A.m227a(interfaceC2655f));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long estimateSize() {
        return this.f1182a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1182a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1182a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ Comparator getComparator() {
        return this.f1182a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1182a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1182a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a
    /* renamed from: k */
    public /* synthetic */ boolean mo126k(InterfaceC2655f interfaceC2655f) {
        return this.f1182a.tryAdvance(C3002A.m227a(interfaceC2655f));
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1182a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2688s.InterfaceC2689a, p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s.InterfaceC2689a trySplit() {
        return m128a(this.f1182a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s trySplit() {
        return C3054g.m132a(this.f1182a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2995t trySplit() {
        return C3070o.m109a(this.f1182a.trySplit());
    }
}
