package org.webrtc;
/* loaded from: classes6.dex */
public class StatsReport {

    /* renamed from: id */
    public final String f2128id;
    public final double timestamp;
    public final String type;
    public final Value[] values;

    /* loaded from: classes6.dex */
    public static class Value {
        public final String name;
        public final String value;

        @CalledByNative("Value")
        public Value(String str, String str2) {
            this.name = str;
            this.value = str2;
        }

        public String toString() {
            return "[" + this.name + ": " + this.value + "]";
        }
    }

    @CalledByNative
    public StatsReport(String str, String str2, double d, Value[] valueArr) {
        this.f2128id = str;
        this.type = str2;
        this.timestamp = d;
        this.values = valueArr;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("id: ");
        sb.append(this.f2128id);
        sb.append(", type: ");
        sb.append(this.type);
        sb.append(", timestamp: ");
        sb.append(this.timestamp);
        sb.append(", values: ");
        int i = 0;
        while (true) {
            Value[] valueArr = this.values;
            if (i < valueArr.length) {
                sb.append(valueArr[i].toString());
                sb.append(", ");
                i++;
            } else {
                return sb.toString();
            }
        }
    }
}
