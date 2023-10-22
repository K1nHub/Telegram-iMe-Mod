package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3220m implements Spliterator.InterfaceC2774c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1323a;

    private /* synthetic */ C3220m(Spliterator.OfLong ofLong) {
        this.f1323a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ Spliterator.InterfaceC2774c m187a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3222n ? ((C3222n) ofLong).f1325a : new C3220m(ofLong);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return this.f1323a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ int characteristics() {
        return this.f1323a.characteristics();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774c
    /* renamed from: d */
    public /* synthetic */ void mo186d(InterfaceC2826p interfaceC2826p) {
        this.f1323a.forEachRemaining(C3203d0.m210a(interfaceC2826p));
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ long estimateSize() {
        return this.f1323a.estimateSize();
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1323a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
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

    @Override // p033j$.util.Spliterator.InterfaceC2774c
    /* renamed from: i */
    public /* synthetic */ boolean mo185i(InterfaceC2826p interfaceC2826p) {
        return this.f1323a.tryAdvance(C3203d0.m210a(interfaceC2826p));
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1323a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774c, p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2774c trySplit() {
        return m187a(this.f1323a.trySplit());
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d, p033j$.util.Spliterator
    public /* synthetic */ Spliterator.InterfaceC2775d trySplit() {
        return C3224o.m179a(this.f1323a.trySplit());
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ p033j$.util.Spliterator trySplit() {
        return C3208g.m204a(this.f1323a.trySplit());
    }
}
