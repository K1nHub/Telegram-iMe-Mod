package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3097i implements InterfaceC2727s.InterfaceC2728a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1185a;

    private /* synthetic */ C3097i(Spliterator.OfDouble ofDouble) {
        this.f1185a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2727s.InterfaceC2728a m133a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3099j ? ((C3099j) ofDouble).f1187a : new C3097i(ofDouble);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1185a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ int characteristics() {
        return this.f1185a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a
    /* renamed from: e */
    public /* synthetic */ void mo132e(InterfaceC2694f interfaceC2694f) {
        this.f1185a.forEachRemaining(C3041A.m232a(interfaceC2694f));
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long estimateSize() {
        return this.f1185a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1185a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC3034t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1185a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ Comparator getComparator() {
        return this.f1185a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1185a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1185a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a
    /* renamed from: k */
    public /* synthetic */ boolean mo131k(InterfaceC2694f interfaceC2694f) {
        return this.f1185a.tryAdvance(C3041A.m232a(interfaceC2694f));
    }

    @Override // p034j$.util.InterfaceC3034t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1185a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2728a, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC2727s.InterfaceC2728a trySplit() {
        return m133a(this.f1185a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC2727s trySplit() {
        return C3093g.m137a(this.f1185a.trySplit());
    }

    @Override // p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC3034t trySplit() {
        return C3109o.m114a(this.f1185a.trySplit());
    }
}
