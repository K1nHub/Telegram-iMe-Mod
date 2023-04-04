package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3075k implements InterfaceC2701s.InterfaceC2703b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1191a;

    private /* synthetic */ C3075k(Spliterator.OfInt ofInt) {
        this.f1191a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2701s.InterfaceC2703b m135a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3077l ? ((C3077l) ofInt).f1193a : new C3075k(ofInt);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return this.f1191a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b
    /* renamed from: c */
    public /* synthetic */ void mo134c(InterfaceC2674l interfaceC2674l) {
        this.f1191a.forEachRemaining(C3046Q.m173a(interfaceC2674l));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ int characteristics() {
        return this.f1191a.characteristics();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long estimateSize() {
        return this.f1191a.estimateSize();
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1191a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1191a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b
    /* renamed from: g */
    public /* synthetic */ boolean mo133g(InterfaceC2674l interfaceC2674l) {
        return this.f1191a.tryAdvance(C3046Q.m173a(interfaceC2674l));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ Comparator getComparator() {
        return this.f1191a.getComparator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1191a.getExactSizeIfKnown();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1191a.hasCharacteristics(i);
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1191a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p035j$.util.InterfaceC2701s.InterfaceC2703b, p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s.InterfaceC2703b trySplit() {
        return m135a(this.f1191a.trySplit());
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s trySplit() {
        return C3067g.m146a(this.f1191a.trySplit());
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC3008t trySplit() {
        return C3083o.m123a(this.f1191a.trySplit());
    }
}
