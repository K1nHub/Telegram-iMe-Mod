package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3102i implements InterfaceC2732s.InterfaceC2733a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1185a;

    private /* synthetic */ C3102i(Spliterator.OfDouble ofDouble) {
        this.f1185a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2732s.InterfaceC2733a m133a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3104j ? ((C3104j) ofDouble).f1187a : new C3102i(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1185a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ int characteristics() {
        return this.f1185a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a
    /* renamed from: e */
    public /* synthetic */ void mo132e(InterfaceC2699f interfaceC2699f) {
        this.f1185a.forEachRemaining(C3046A.m232a(interfaceC2699f));
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long estimateSize() {
        return this.f1185a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1185a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC3039t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1185a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ Comparator getComparator() {
        return this.f1185a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1185a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1185a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a
    /* renamed from: k */
    public /* synthetic */ boolean mo131k(InterfaceC2699f interfaceC2699f) {
        return this.f1185a.tryAdvance(C3046A.m232a(interfaceC2699f));
    }

    @Override // p034j$.util.InterfaceC3039t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1185a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2732s.InterfaceC2733a, p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC2732s.InterfaceC2733a trySplit() {
        return m133a(this.f1185a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC2732s trySplit() {
        return C3098g.m137a(this.f1185a.trySplit());
    }

    @Override // p034j$.util.InterfaceC3039t, p034j$.util.InterfaceC2732s
    public /* synthetic */ InterfaceC3039t trySplit() {
        return C3114o.m114a(this.f1185a.trySplit());
    }
}
