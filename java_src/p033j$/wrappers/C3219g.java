package p033j$.wrappers;

import java.util.Comparator;
import java.util.Spliterator;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.wrappers.g */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3219g implements InterfaceC2853s {

    /* renamed from: a */
    final /* synthetic */ Spliterator f1263a;

    private /* synthetic */ C3219g(Spliterator spliterator) {
        this.f1263a = spliterator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2853s m137a(Spliterator spliterator) {
        if (spliterator == null) {
            return null;
        }
        return spliterator instanceof C3221h ? ((C3221h) spliterator).f1265a : new C3219g(spliterator);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return this.f1263a.tryAdvance(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ int characteristics() {
        return this.f1263a.characteristics();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long estimateSize() {
        return this.f1263a.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f1263a.forEachRemaining(C$r8$wrapper$java$util$function$Consumer$WRP.convert(consumer));
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ Comparator getComparator() {
        return this.f1263a.getComparator();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return this.f1263a.getExactSizeIfKnown();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return this.f1263a.hasCharacteristics(i);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ InterfaceC2853s trySplit() {
        return m137a(this.f1263a.trySplit());
    }
}