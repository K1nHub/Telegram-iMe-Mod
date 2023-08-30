package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.wrappers.m */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3370m implements InterfaceC2992s.InterfaceC2995c {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfLong f1288a;

    private /* synthetic */ C3370m(Spliterator.OfLong ofLong) {
        this.f1288a = ofLong;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2992s.InterfaceC2995c m138a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof C3372n ? ((C3372n) ofLong).f1290a : new C3370m(ofLong);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1288a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ int characteristics() {
        return this.f1288a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c
    /* renamed from: d */
    public /* synthetic */ void mo137d(InterfaceC2970q interfaceC2970q) {
        this.f1288a.forEachRemaining(C3357f0.m156a(interfaceC2970q));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long estimateSize() {
        return this.f1288a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1288a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1288a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ Comparator getComparator() {
        return this.f1288a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1288a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1288a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c
    /* renamed from: i */
    public /* synthetic */ boolean mo136i(InterfaceC2970q interfaceC2970q) {
        return this.f1288a.tryAdvance(C3357f0.m156a(interfaceC2970q));
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1288a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2995c, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s.InterfaceC2995c trySplit() {
        return m138a(this.f1288a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s trySplit() {
        return C3358g.m155a(this.f1288a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC3299t trySplit() {
        return C3374o.m132a(this.f1288a.trySplit());
    }
}
