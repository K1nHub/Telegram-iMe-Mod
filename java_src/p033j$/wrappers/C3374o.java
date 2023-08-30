package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.o */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3374o implements InterfaceC3299t {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfPrimitive f1292a;

    private /* synthetic */ C3374o(Spliterator.OfPrimitive ofPrimitive) {
        this.f1292a = ofPrimitive;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC3299t m132a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof C3376p ? ((C3376p) ofPrimitive).f1294a : new C3374o(ofPrimitive);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1292a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ int characteristics() {
        return this.f1292a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long estimateSize() {
        return this.f1292a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1292a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1292a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ Comparator getComparator() {
        return this.f1292a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1292a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1292a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC3299t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1292a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s trySplit() {
        return C3358g.m155a(this.f1292a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3299t, p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC3299t trySplit() {
        return m132a(this.f1292a.trySplit());
    }
}
