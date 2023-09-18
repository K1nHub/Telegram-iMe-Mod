package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.wrappers.i */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3278i implements InterfaceC2908s.InterfaceC2909a {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfDouble f1271a;

    private /* synthetic */ C3278i(Spliterator.OfDouble ofDouble) {
        this.f1271a = ofDouble;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2908s.InterfaceC2909a m151a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof C3280j ? ((C3280j) ofDouble).f1273a : new C3278i(ofDouble);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1271a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ int characteristics() {
        return this.f1271a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a
    /* renamed from: e */
    public /* synthetic */ void mo150e(InterfaceC2875f interfaceC2875f) {
        this.f1271a.forEachRemaining(C3222A.m250a(interfaceC2875f));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long estimateSize() {
        return this.f1271a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1271a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1271a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ Comparator getComparator() {
        return this.f1271a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1271a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1271a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a
    /* renamed from: k */
    public /* synthetic */ boolean mo149k(InterfaceC2875f interfaceC2875f) {
        return this.f1271a.tryAdvance(C3222A.m250a(interfaceC2875f));
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1271a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2909a, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s.InterfaceC2909a trySplit() {
        return m151a(this.f1271a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s trySplit() {
        return C3274g.m155a(this.f1271a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC3215t trySplit() {
        return C3290o.m132a(this.f1271a.trySplit());
    }
}
