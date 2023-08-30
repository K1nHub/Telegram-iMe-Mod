package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3358g implements InterfaceC2992s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1276a;

    private /* synthetic */ C3358g(Spliterator spliterator) {
        this.f1276a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2992s m155a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3360h ? ((C3360h) spliterator).f1278a : new C3358g(spliterator);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return this.f1276a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ int characteristics() {
        return this.f1276a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long estimateSize() {
        return this.f1276a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1276a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ Comparator getComparator() {
        return this.f1276a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1276a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1276a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ InterfaceC2992s trySplit() {
        return m155a(this.f1276a.trySplit());
    }
}
