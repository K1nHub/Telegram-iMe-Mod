package org.ton.tlb;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.ton.bitstring.BitString;
/* compiled from: TlbPrettyPrinter.kt */
/* loaded from: classes6.dex */
public final class TlbPrettyPrinter {
    private final boolean dummy;
    private int indent;
    private int level;
    private final StringBuilder stringBuilder;

    public TlbPrettyPrinter(StringBuilder stringBuilder, int i, boolean z) {
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
        this.stringBuilder = stringBuilder;
        this.indent = i;
        this.dummy = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TlbPrettyPrinter(StringBuilder stringBuilder, int i) {
        this(stringBuilder, i, false);
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TlbPrettyPrinter(StringBuilder stringBuilder) {
        this(stringBuilder, 2);
        Intrinsics.checkNotNullParameter(stringBuilder, "stringBuilder");
    }

    public TlbPrettyPrinter() {
        this(new StringBuilder());
    }

    public final TlbPrettyPrinter open(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        append('(').append(msg);
        this.level++;
        return this;
    }

    public static /* synthetic */ TlbPrettyPrinter close$default(TlbPrettyPrinter tlbPrettyPrinter, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return tlbPrettyPrinter.close(str);
    }

    public final TlbPrettyPrinter close(String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        int i = this.level;
        if (!(i > 0)) {
            throw new IllegalStateException("TlbPrettyPrinter is already closed".toString());
        }
        this.level = i - 1;
        append(msg).append(')');
        return this;
    }

    public final void newLine() {
        String repeat;
        if (this.indent <= 0 || this.dummy) {
            return;
        }
        if (this.level > 0) {
            append("\n");
        }
        repeat = StringsKt__StringsJVMKt.repeat(" ", this.level * this.indent);
        append(repeat);
    }

    public final TlbPrettyPrinter field(Object obj) {
        if (obj != null) {
            this.level++;
            if (obj instanceof TlbObject) {
                newLine();
            }
            append(" ");
            type(obj);
            this.level--;
        }
        return this;
    }

    public final TlbPrettyPrinter field(String name, Object obj) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (obj != null) {
            if (obj instanceof TlbObject) {
                newLine();
            }
            append(' ').append(name).append(':');
            type(obj);
        }
        return this;
    }

    public final TlbPrettyPrinter type(Object obj) {
        if (obj != null) {
            try {
                if (obj instanceof TlbObject) {
                    ((TlbObject) obj).print(this);
                } else if (!this.dummy) {
                    if (obj instanceof Boolean) {
                        append(Integer.valueOf(((Boolean) obj).booleanValue() ? 1 : 0));
                    } else if (obj instanceof BitString) {
                        append("x{" + obj + '}');
                    } else {
                        append(obj);
                    }
                }
            } catch (Exception e) {
                throw new RuntimeException("Can't print TL-B:\n" + ((Object) this.stringBuilder) + "<-- HERE", e);
            }
        }
        return this;
    }

    private final TlbPrettyPrinter append(Object obj) {
        if (!this.dummy) {
            this.stringBuilder.append(obj.toString());
        }
        return this;
    }

    public String toString() {
        String sb = this.stringBuilder.toString();
        Intrinsics.checkNotNullExpressionValue(sb, "stringBuilder.toString()");
        return sb;
    }
}
