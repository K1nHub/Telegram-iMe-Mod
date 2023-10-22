package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2821k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2979W3 extends AbstractC2994Z3 implements InterfaceC2822l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2979W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2979W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3, java.lang.Iterable, p033j$.lang.InterfaceC2670e
    /* renamed from: A */
    public Spliterator.InterfaceC2773b spliterator() {
        return new C2974V3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        m519z();
        int i2 = this.f1067b;
        this.f1067b = i2 + 1;
        ((int[]) this.f1003e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: c */
    public Object mo527c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2670e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2822l) {
            mo339g((InterfaceC2822l) consumer);
        } else if (AbstractC2950Q4.f963a) {
            AbstractC2950Q4.m545a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2769F.m678g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: s */
    protected void mo526s(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2822l interfaceC2822l = (InterfaceC2822l) obj2;
        while (i < i2) {
            interfaceC2822l.accept(iArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: t */
    protected int mo525t(Object obj) {
        return ((int[]) obj).length;
    }

    public String toString() {
        int[] iArr = (int[]) mo340e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2994Z3
    /* renamed from: y */
    protected Object[] mo520y(int i) {
        return new int[i];
    }
}
