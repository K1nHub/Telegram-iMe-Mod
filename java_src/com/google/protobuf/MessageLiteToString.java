package com.google.protobuf;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.protobuf.GeneratedMessageLite;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class MessageLiteToString {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String toString(MessageLite messageLite, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        reflectivePrintWithIndent(messageLite, sb, 0);
        return sb.toString();
    }

    private static void reflectivePrintWithIndent(MessageLite messageLite, StringBuilder sb, int i) {
        Method[] declaredMethods;
        Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object> next;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : messageLite.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            boolean z = true;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String str2 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 4);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    printField(sb, i, camelCaseToSnakeCase(str2), GeneratedMessageLite.invokeOrDie(method2, messageLite, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String str3 = substring.substring(0, 1).toLowerCase() + substring.substring(1, substring.length() - 3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    printField(sb, i, camelCaseToSnakeCase(str3), GeneratedMessageLite.invokeOrDie(method3, messageLite, new Object[0]));
                }
            }
            if (((Method) hashMap2.get("set" + substring)) != null) {
                if (substring.endsWith("Bytes")) {
                    if (hashMap.containsKey("get" + substring.substring(0, substring.length() - 5))) {
                    }
                }
                String str4 = substring.substring(0, 1).toLowerCase() + substring.substring(1);
                Method method4 = (Method) hashMap.get("get" + substring);
                Method method5 = (Method) hashMap.get("has" + substring);
                if (method4 != null) {
                    Object invokeOrDie = GeneratedMessageLite.invokeOrDie(method4, messageLite, new Object[0]);
                    if (method5 == null) {
                        if (isDefaultValue(invokeOrDie)) {
                            z = false;
                        }
                    } else {
                        z = ((Boolean) GeneratedMessageLite.invokeOrDie(method5, messageLite, new Object[0])).booleanValue();
                    }
                    if (z) {
                        printField(sb, i, camelCaseToSnakeCase(str4), invokeOrDie);
                    }
                }
            }
        }
        if (messageLite instanceof GeneratedMessageLite.ExtendableMessage) {
            Iterator<Map.Entry<GeneratedMessageLite.ExtensionDescriptor, Object>> it = ((GeneratedMessageLite.ExtendableMessage) messageLite).extensions.iterator();
            while (it.hasNext()) {
                printField(sb, i, "[" + next.getKey().getNumber() + "]", it.next().getValue());
            }
        }
        UnknownFieldSetLite unknownFieldSetLite = ((GeneratedMessageLite) messageLite).unknownFields;
        if (unknownFieldSetLite != null) {
            unknownFieldSetLite.printWithIndent(sb, i);
        }
    }

    private static boolean isDefaultValue(Object obj) {
        if (obj instanceof Boolean) {
            return !((Boolean) obj).booleanValue();
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue() == 0;
        } else if (obj instanceof Float) {
            return Float.floatToRawIntBits(((Float) obj).floatValue()) == 0;
        } else if (obj instanceof Double) {
            return Double.doubleToRawLongBits(((Double) obj).doubleValue()) == 0;
        } else if (obj instanceof String) {
            return obj.equals("");
        } else {
            if (obj instanceof ByteString) {
                return obj.equals(ByteString.EMPTY);
            }
            return obj instanceof MessageLite ? obj == ((MessageLite) obj).getDefaultInstanceForType() : (obj instanceof Enum) && ((Enum) obj).ordinal() == 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void printField(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            for (Object obj2 : (List) obj) {
                printField(sb, i, str, obj2);
            }
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                printField(sb, i, str, entry);
            }
        } else {
            sb.append('\n');
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(' ');
            }
            sb.append(str);
            if (obj instanceof String) {
                sb.append(": \"");
                sb.append(TextFormatEscaper.escapeText((String) obj));
                sb.append('\"');
            } else if (obj instanceof ByteString) {
                sb.append(": \"");
                sb.append(TextFormatEscaper.escapeBytes((ByteString) obj));
                sb.append('\"');
            } else if (obj instanceof GeneratedMessageLite) {
                sb.append(" {");
                reflectivePrintWithIndent((GeneratedMessageLite) obj, sb, i + 2);
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else if (obj instanceof Map.Entry) {
                sb.append(" {");
                Map.Entry entry2 = (Map.Entry) obj;
                int i4 = i + 2;
                printField(sb, i4, "key", entry2.getKey());
                printField(sb, i4, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry2.getValue());
                sb.append("\n");
                while (i2 < i) {
                    sb.append(' ');
                    i2++;
                }
                sb.append("}");
            } else {
                sb.append(": ");
                sb.append(obj);
            }
        }
    }

    private static final String camelCaseToSnakeCase(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (Character.isUpperCase(charAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(charAt));
        }
        return sb.toString();
    }
}
