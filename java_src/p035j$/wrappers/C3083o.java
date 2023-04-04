package p035j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3083o implements InterfaceC3008t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1199a;

    private /* synthetic */ C3083o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1199a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC3008t m123a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3085p ? ((C3085p) ofPrimitive).f1201a : new C3083o(ofPrimitive);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return this.f1199a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ int characteristics() {
        return this.f1199a.characteristics();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long estimateSize() {
        return this.f1199a.estimateSize();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1199a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1199a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ Comparator getComparator() {
        return this.f1199a.getComparator();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1199a.getExactSizeIfKnown();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1199a.hasCharacteristics(i);
    }

    @Override // p035j$.util.InterfaceC3008t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1199a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC2701s trySplit() {
        return C3067g.m146a(this.f1199a.trySplit());
    }

    @Override // p035j$.util.InterfaceC3008t, p035j$.util.InterfaceC2701s
    public /* synthetic */ InterfaceC3008t trySplit() {
        return m123a(this.f1199a.trySplit());
    }
}
