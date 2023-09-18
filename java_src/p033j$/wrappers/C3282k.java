package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.wrappers.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3282k implements InterfaceC2908s.InterfaceC2910b {

    /* renamed from: a */
    final /* synthetic */ Spliterator.OfInt f1275a;

    private /* synthetic */ C3282k(Spliterator.OfInt ofInt) {
        this.f1275a = ofInt;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2908s.InterfaceC2910b m144a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof C3284l ? ((C3284l) ofInt).f1277a : new C3282k(ofInt);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1275a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b
    /* renamed from: c */
    public /* synthetic */ void mo143c(InterfaceC2881l interfaceC2881l) {
        this.f1275a.forEachRemaining(C3253Q.m182a(interfaceC2881l));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ int characteristics() {
        return this.f1275a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long estimateSize() {
        return this.f1275a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1275a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ void forEachRemaining(Object obj) {
        this.f1275a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b
    /* renamed from: g */
    public /* synthetic */ boolean mo142g(InterfaceC2881l interfaceC2881l) {
        return this.f1275a.tryAdvance(C3253Q.m182a(interfaceC2881l));
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ Comparator getComparator() {
        return this.f1275a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1275a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1275a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC3215t
    public /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f1275a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // p033j$.util.InterfaceC2908s.InterfaceC2910b, p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s.InterfaceC2910b trySplit() {
        return m144a(this.f1275a.trySplit());
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC2908s trySplit() {
        return C3274g.m155a(this.f1275a.trySplit());
    }

    @Override // p033j$.util.InterfaceC3215t, p033j$.util.InterfaceC2908s
    public /* synthetic */ InterfaceC3215t trySplit() {
        return C3290o.m132a(this.f1275a.trySplit());
    }
}
