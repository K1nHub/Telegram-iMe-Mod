package p034j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2991g implements InterfaceC2625s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1178a;

    private /* synthetic */ C2991g(Spliterator spliterator) {
        this.f1178a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2625s m151a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C2993h ? ((C2993h) spliterator).f1180a : new C2991g(spliterator);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return this.f1178a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ int characteristics() {
        return this.f1178a.characteristics();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long estimateSize() {
        return this.f1178a.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1178a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ Comparator getComparator() {
        return this.f1178a.getComparator();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1178a.getExactSizeIfKnown();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1178a.hasCharacteristics(i);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ InterfaceC2625s trySplit() {
        return m151a(this.f1178a.trySplit());
    }
}
