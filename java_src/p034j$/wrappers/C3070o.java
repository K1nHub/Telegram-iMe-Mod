package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3070o implements InterfaceC2995t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1194a;

    private /* synthetic */ C3070o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1194a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2995t m109a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3072p ? ((C3072p) ofPrimitive).f1196a : new C3070o(ofPrimitive);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return this.f1194a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ int characteristics() {
        return this.f1194a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long estimateSize() {
        return this.f1194a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1194a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1194a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ Comparator getComparator() {
        return this.f1194a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1194a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1194a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2995t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1194a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2688s trySplit() {
        return C3054g.m132a(this.f1194a.trySplit());
    }

    @Override // p034j$.util.InterfaceC2995t, p034j$.util.InterfaceC2688s
    public /* synthetic */ InterfaceC2995t trySplit() {
        return m109a(this.f1194a.trySplit());
    }
}
