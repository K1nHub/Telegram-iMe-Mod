package p033j$.util;

import java.util.NoSuchElementException;
import java.util.Objects;
import p033j$.util.Iterator;
import p033j$.util.Spliterator;
import p033j$.util.function.C2826o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.t */
/* loaded from: classes2.dex */
class C3153t implements InterfaceC2846p, InterfaceC2827p, Iterator {

    /* renamed from: a */
    boolean f1240a = false;

    /* renamed from: b */
    long f1241b;

    /* renamed from: c */
    final /* synthetic */ Spliterator.InterfaceC2775c f1242c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3153t(Spliterator.InterfaceC2775c interfaceC2775c) {
        this.f1242c = interfaceC2775c;
    }

    @Override // p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        this.f1240a = true;
        this.f1241b = j;
    }

    @Override // p033j$.util.InterfaceC2843n
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        while (hasNext()) {
            interfaceC2827p.accept(nextLong());
        }
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }

    @Override // p033j$.util.InterfaceC2846p, p033j$.util.Iterator
    public void forEachRemaining(Consumer consumer) {
        if (consumer instanceof InterfaceC2827p) {
            forEachRemaining((InterfaceC2827p) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (!AbstractC2772H.f696a) {
            while (hasNext()) {
                consumer.accept(Long.valueOf(nextLong()));
            }
            return;
        }
        AbstractC2772H.m672a(C3153t.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
        throw null;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public boolean hasNext() {
        if (!this.f1240a) {
            this.f1242c.mo186i(this);
        }
        return this.f1240a;
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public Long next() {
        if (AbstractC2772H.f696a) {
            AbstractC2772H.m672a(C3153t.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // p033j$.util.InterfaceC2846p
    public long nextLong() {
        if (this.f1240a || hasNext()) {
            this.f1240a = false;
            return this.f1241b;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator, p033j$.util.Iterator
    public /* synthetic */ void remove() {
        Iterator.CC.m671a(this);
        throw null;
    }
}
