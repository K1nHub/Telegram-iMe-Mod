package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3219m implements Spliterator.InterfaceC2773c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1323a;

    private /* synthetic */ C3219m(Spliterator.OfLong ofLong) {
        this.f1323a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2773c m191a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3221n ? ((C3221n) ofLong).f1325a : new C3219m(ofLong);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return this.f1323a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1323a.characteristics();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c
    /* renamed from: d */
    public /* synthetic */ void mo190d(InterfaceC2825p interfaceC2825p) {
        this.f1323a.forEachRemaining(C3202d0.m214a(interfaceC2825p));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1323a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1323a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1323a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ Comparator getComparator() {
        return this.f1323a.getComparator();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1323a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1323a.hasCharacteristics(i);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c
    /* renamed from: i */
    public /* synthetic */ boolean mo189i(InterfaceC2825p interfaceC2825p) {
        return this.f1323a.tryAdvance(C3202d0.m214a(interfaceC2825p));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1323a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2773c, p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2773c trySplit() {
        return m191a(this.f1323a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2774d trySplit() {
        return C3223o.m183a(this.f1323a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3207g.m208a(this.f1323a.trySplit());
    }
}
