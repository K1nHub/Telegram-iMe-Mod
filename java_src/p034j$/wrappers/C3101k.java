package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3101k implements InterfaceC2727s.InterfaceC2729b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1189a;

    private /* synthetic */ C3101k(Spliterator.OfInt ofInt) {
        this.f1189a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2727s.InterfaceC2729b m126a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3103l ? ((C3103l) ofInt).f1191a : new C3101k(ofInt);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b, p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1189a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b
    /* renamed from: c */
    public /* synthetic */ void mo125c(InterfaceC2700l interfaceC2700l) {
        this.f1189a.forEachRemaining(C3072Q.m164a(interfaceC2700l));
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ int characteristics() {
        return this.f1189a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long estimateSize() {
        return this.f1189a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b, p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1189a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC3034t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1189a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b
    /* renamed from: g */
    public /* synthetic */ boolean mo124g(InterfaceC2700l interfaceC2700l) {
        return this.f1189a.tryAdvance(C3072Q.m164a(interfaceC2700l));
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ Comparator getComparator() {
        return this.f1189a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1189a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1189a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC3034t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1189a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p034j$.util.InterfaceC2727s.InterfaceC2729b, p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC2727s.InterfaceC2729b trySplit() {
        return m126a(this.f1189a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC2727s trySplit() {
        return C3093g.m137a(this.f1189a.trySplit());
    }

    @Override // p034j$.util.InterfaceC3034t, p034j$.util.InterfaceC2727s
    public /* synthetic */ InterfaceC3034t trySplit() {
        return C3109o.m114a(this.f1189a.trySplit());
    }
}
