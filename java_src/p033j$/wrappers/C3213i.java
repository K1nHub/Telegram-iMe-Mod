package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3213i implements Spliterator.InterfaceC2773a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1315a;

    private /* synthetic */ C3213i(Spliterator.OfDouble ofDouble) {
        this.f1315a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2773a m200a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3215j ? ((C3215j) ofDouble).f1317a : new C3213i(ofDouble);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return this.f1315a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1315a.characteristics();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a
    /* renamed from: e */
    public /* synthetic */ void mo199e(InterfaceC2817f interfaceC2817f) {
        this.f1315a.forEachRemaining(C3247z.m156a(interfaceC2817f));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1315a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1315a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1315a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1315a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1315a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1315a.hasCharacteristics(i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a
    /* renamed from: n */
    public /* synthetic */ boolean mo198n(InterfaceC2817f interfaceC2817f) {
        return this.f1315a.tryAdvance(C3247z.m156a(interfaceC2817f));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1315a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773a, p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2773a trySplit() {
        return m200a(this.f1315a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2776d trySplit() {
        return C3225o.m180a(this.f1315a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3209g.m205a(this.f1315a.trySplit());
    }
}
