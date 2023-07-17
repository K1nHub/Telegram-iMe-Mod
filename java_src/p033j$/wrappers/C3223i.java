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
    final /* synthetic */ Spliterator.OfDouble f1267a;

    private /* synthetic */ C3223i(Spliterator.OfDouble ofDouble) {
        this.f1267a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2853s.InterfaceC2854a m133a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3225j ? ((C3225j) ofDouble).f1269a : new C3223i(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1267a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ int characteristics() {
        return this.f1267a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a
    /* renamed from: e */
    public /* synthetic */ void mo132e(InterfaceC2820f interfaceC2820f) {
        this.f1267a.forEachRemaining(C3167A.m232a(interfaceC2820f));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long estimateSize() {
        return this.f1267a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1267a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1267a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ Comparator getComparator() {
        return this.f1267a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1267a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1267a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a
    /* renamed from: k */
    public /* synthetic */ boolean mo131k(InterfaceC2820f interfaceC2820f) {
        return this.f1267a.tryAdvance(C3167A.m232a(interfaceC2820f));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1267a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2853s.InterfaceC2854a, p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s.InterfaceC2854a trySplit() {
        return m133a(this.f1267a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s trySplit() {
        return C3219g.m137a(this.f1267a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC3160t trySplit() {
        return C3235o.m114a(this.f1267a.trySplit());
    }
}
