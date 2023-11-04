package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3224m implements Spliterator.InterfaceC2778c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1323a;

    private /* synthetic */ C3224m(Spliterator.OfLong ofLong) {
        this.f1323a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2778c m188a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3226n ? ((C3226n) ofLong).f1325a : new C3224m(ofLong);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2778c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return this.f1323a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1323a.characteristics();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2778c
    /* renamed from: d */
    public /* synthetic */ void mo187d(InterfaceC2830p interfaceC2830p) {
        this.f1323a.forEachRemaining(C3207d0.m211a(interfaceC2830p));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1323a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2778c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1323a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
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

    @Override // p033j$.util.Spliterator.InterfaceC2778c
    /* renamed from: i */
    public /* synthetic */ boolean mo186i(InterfaceC2830p interfaceC2830p) {
        return this.f1323a.tryAdvance(C3207d0.m211a(interfaceC2830p));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1323a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2778c, p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2778c trySplit() {
        return m188a(this.f1323a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2779d trySplit() {
        return C3228o.m180a(this.f1323a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3212g.m205a(this.f1323a.trySplit());
    }
}
