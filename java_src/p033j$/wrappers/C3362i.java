package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3362i implements InterfaceC2992s.InterfaceC2993a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1280a;

    private /* synthetic */ C3362i(Spliterator.OfDouble ofDouble) {
        this.f1280a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2992s.InterfaceC2993a m151a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3364j ? ((C3364j) ofDouble).f1282a : new C3362i(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1280a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ int characteristics() {
        return this.f1280a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a
    /* renamed from: e */
    public /* synthetic */ void mo150e(InterfaceC2959f interfaceC2959f) {
        this.f1280a.forEachRemaining(C3306A.m250a(interfaceC2959f));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long estimateSize() {
        return this.f1280a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1280a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1280a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ Comparator getComparator() {
        return this.f1280a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1280a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1280a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a
    /* renamed from: k */
    public /* synthetic */ boolean mo149k(InterfaceC2959f interfaceC2959f) {
        return this.f1280a.tryAdvance(C3306A.m250a(interfaceC2959f));
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1280a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2992s.InterfaceC2993a, p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s.InterfaceC2993a trySplit() {
        return m151a(this.f1280a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s trySplit() {
        return C3358g.m155a(this.f1280a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC3299t trySplit() {
        return C3374o.m132a(this.f1280a.trySplit());
    }
}
