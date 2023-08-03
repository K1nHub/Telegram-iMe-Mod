package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3223i implements InterfaceC2853s.InterfaceC2854a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1270a;

    private /* synthetic */ C3223i(Spliterator.OfDouble ofDouble) {
        this.f1270a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2854a m151a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3225j ? ((C3225j) ofDouble).f1272a : new C3223i(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1270a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ int characteristics() {
        return this.f1270a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a
    /* renamed from: e */
    public /* synthetic */ void mo150e(InterfaceC2820f interfaceC2820f) {
        this.f1270a.forEachRemaining(C3167A.m250a(interfaceC2820f));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long estimateSize() {
        return this.f1270a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1270a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1270a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ Comparator getComparator() {
        return this.f1270a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1270a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1270a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a
    /* renamed from: k */
    public /* synthetic */ boolean mo149k(InterfaceC2820f interfaceC2820f) {
        return this.f1270a.tryAdvance(C3167A.m250a(interfaceC2820f));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1270a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return m151a(this.f1270a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s trySplit() {
        return C3219g.m155a(this.f1270a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC3160t trySplit() {
        return C3235o.m132a(this.f1270a.trySplit());
    }
}
