package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3235o implements InterfaceC3160t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1282a;

    private /* synthetic */ C3235o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1282a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC3160t m132a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3237p ? ((C3237p) ofPrimitive).f1284a : new C3235o(ofPrimitive);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1282a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ int characteristics() {
        return this.f1282a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long estimateSize() {
        return this.f1282a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1282a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1282a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ Comparator getComparator() {
        return this.f1282a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1282a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1282a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC3160t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1282a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s trySplit() {
        return C3219g.m155a(this.f1282a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3160t, p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC3160t trySplit() {
        return m132a(this.f1282a.trySplit());
    }
}
