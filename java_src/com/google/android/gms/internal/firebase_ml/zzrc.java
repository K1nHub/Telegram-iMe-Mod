package com.google.android.gms.internal.firebase_ml;

import android.graphics.Rect;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.p020ml.vision.text.FirebaseVisionText;
import com.google.firebase.p020ml.vision.text.RecognizedLanguage;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class zzrc {
    private static final GmsLogger zzass = new GmsLogger("TextAnnotationConverter", "");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FirebaseVisionText zzb(zzjw zzjwVar, float f) {
        Iterator<zzjn> it;
        boolean z;
        Iterator<zziy> it2;
        FirebaseVisionText.TextBlock textBlock;
        Iterator<zzjn> it3;
        boolean z2;
        Iterator<zziy> it4;
        Iterator<zzjq> it5;
        String sb;
        FirebaseVisionText.Element element;
        Preconditions.checkNotNull(zzjwVar, "The input TextAnnotation can not be null");
        FirebaseVisionText.TextBlock textBlock2 = null;
        if (zzjwVar.getPages().size() <= 0) {
            zzass.m1100d("TextAnnotationConverter", "Text Annotation is null, return null");
            return null;
        }
        boolean z3 = true;
        if (zzjwVar.getPages().size() > 1) {
            zzass.m1100d("TextAnnotationConverter", "Text Annotation has more than one page, which should not happen");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<zzjn> it6 = zzjwVar.getPages().iterator();
        while (it6.hasNext()) {
            Iterator<zziy> it7 = it6.next().getBlocks().iterator();
            while (it7.hasNext()) {
                zziy next = it7.next();
                Preconditions.checkNotNull(next, "Input block can not be null");
                ArrayList arrayList2 = new ArrayList();
                if (next.getParagraphs() == null) {
                    it = it6;
                    textBlock = textBlock2;
                    z = z3;
                    it2 = it7;
                } else {
                    Iterator<zzjq> it8 = next.getParagraphs().iterator();
                    while (it8.hasNext()) {
                        zzjq next2 = it8.next();
                        if (next2 != null) {
                            Preconditions.checkNotNull(next2, "Input Paragraph can not be null");
                            ArrayList arrayList3 = new ArrayList();
                            ArrayList arrayList4 = new ArrayList();
                            HashSet<RecognizedLanguage> hashSet = new HashSet();
                            StringBuilder sb2 = new StringBuilder();
                            int i = 0;
                            float f2 = BitmapDescriptorFactory.HUE_RED;
                            while (i < next2.getWords().size()) {
                                zzjz zzjzVar = next2.getWords().get(i);
                                if (zzjzVar != null) {
                                    Preconditions.checkNotNull(zzjzVar, "Input Word can not be null");
                                    Rect zza = zzqc.zza(zzjzVar.zzhj(), f);
                                    it3 = it6;
                                    List<RecognizedLanguage> zze = zze(zzjzVar.zzhk());
                                    Preconditions.checkNotNull(zzjzVar, "Input Word can not be null");
                                    String str = "";
                                    if (zzjzVar.getSymbols() == null) {
                                        it4 = it7;
                                        sb = "";
                                    } else {
                                        StringBuilder sb3 = new StringBuilder();
                                        for (zzjt zzjtVar : zzjzVar.getSymbols()) {
                                            sb3.append(zzjtVar.getText());
                                            it7 = it7;
                                        }
                                        it4 = it7;
                                        sb = sb3.toString();
                                    }
                                    if (sb.isEmpty()) {
                                        it5 = it8;
                                        element = null;
                                    } else {
                                        it5 = it8;
                                        element = new FirebaseVisionText.Element(sb, zza, zze, zzjzVar.getConfidence());
                                    }
                                    if (element != null) {
                                        arrayList4.add(element);
                                        float zza2 = f2 + zzqc.zza(element.getConfidence());
                                        hashSet.addAll(element.getRecognizedLanguages());
                                        sb2.append(element.getText());
                                        Preconditions.checkNotNull(zzjzVar, "Input word can not be null");
                                        String zza3 = zza(zzjzVar);
                                        if (zza3 != null) {
                                            if (zza3.equals("SPACE") || zza3.equals("SURE_SPACE")) {
                                                str = " ";
                                            } else if (zza3.equals("HYPHEN")) {
                                                str = "-";
                                            }
                                        }
                                        sb2.append(str);
                                        Preconditions.checkNotNull(zzjzVar, "Input word can not be null");
                                        String zza4 = zza(zzjzVar);
                                        if (zza4 != null && (zza4.equals("EOL_SURE_SPACE") || zza4.equals("LINE_BREAK") || zza4.equals("HYPHEN"))) {
                                            z2 = true;
                                        } else {
                                            z2 = true;
                                            if (i != next2.getWords().size() - 1) {
                                                f2 = zza2;
                                            }
                                        }
                                        Preconditions.checkNotNull(arrayList4, "Input elements can not be null");
                                        int size = arrayList4.size();
                                        int i2 = 0;
                                        Rect rect = null;
                                        while (i2 < size) {
                                            Object obj = arrayList4.get(i2);
                                            i2++;
                                            FirebaseVisionText.Element element2 = (FirebaseVisionText.Element) obj;
                                            if (element2.getBoundingBox() != null) {
                                                Rect rect2 = rect == null ? new Rect() : rect;
                                                rect2.union(element2.getBoundingBox());
                                                rect = rect2;
                                            }
                                        }
                                        String sb4 = sb2.toString();
                                        ArrayList arrayList5 = new ArrayList();
                                        for (RecognizedLanguage recognizedLanguage : hashSet) {
                                            if (recognizedLanguage != null && recognizedLanguage.getLanguageCode() != null && !recognizedLanguage.getLanguageCode().isEmpty()) {
                                                arrayList5.add(recognizedLanguage);
                                            }
                                        }
                                        arrayList3.add(new FirebaseVisionText.Line(sb4, rect, arrayList5, arrayList4, Float.compare(zza2, BitmapDescriptorFactory.HUE_RED) > 0 ? Float.valueOf(zza2 / arrayList4.size()) : null));
                                        ArrayList arrayList6 = new ArrayList();
                                        hashSet.clear();
                                        arrayList4 = arrayList6;
                                        sb2 = new StringBuilder();
                                        f2 = 0.0f;
                                        i++;
                                        z3 = z2;
                                        it6 = it3;
                                        it7 = it4;
                                        it8 = it5;
                                    } else {
                                        z2 = true;
                                    }
                                } else {
                                    it3 = it6;
                                    z2 = z3;
                                    it4 = it7;
                                    it5 = it8;
                                }
                                i++;
                                z3 = z2;
                                it6 = it3;
                                it7 = it4;
                                it8 = it5;
                            }
                            arrayList2.addAll(arrayList3);
                        }
                    }
                    it = it6;
                    z = z3;
                    it2 = it7;
                    if (arrayList2.isEmpty()) {
                        textBlock = null;
                    } else {
                        StringBuilder sb5 = new StringBuilder();
                        int size2 = arrayList2.size();
                        int i3 = 0;
                        while (i3 < size2) {
                            Object obj2 = arrayList2.get(i3);
                            i3++;
                            sb5.append(((FirebaseVisionText.Line) obj2).getText());
                            sb5.append("\n");
                        }
                        textBlock = new FirebaseVisionText.TextBlock(sb5.toString(), zzqc.zza(next.zzhj(), f), zze(next.zzhk()), arrayList2, next.getConfidence());
                    }
                }
                if (textBlock != null) {
                    arrayList.add(textBlock);
                }
                z3 = z;
                it6 = it;
                it7 = it2;
                textBlock2 = null;
            }
            textBlock2 = null;
        }
        return new FirebaseVisionText(zzjwVar.getText(), arrayList);
    }

    public static List<RecognizedLanguage> zze(zzjv zzjvVar) {
        ArrayList arrayList = new ArrayList();
        if (zzjvVar != null && zzjvVar.zzhs() != null) {
            for (zzjb zzjbVar : zzjvVar.zzhs()) {
                RecognizedLanguage zza = RecognizedLanguage.zza(zzjbVar);
                if (zza != null) {
                    arrayList.add(zza);
                }
            }
        }
        return arrayList;
    }

    private static String zza(zzjz zzjzVar) {
        Preconditions.checkNotNull(zzjzVar, "Input Word can not be null");
        if (zzjzVar.getSymbols() == null || zzjzVar.getSymbols().size() <= 0) {
            return null;
        }
        zzjt zzjtVar = zzjzVar.getSymbols().get(zzjzVar.getSymbols().size() - 1);
        if (zzjtVar.zzhk() == null || zzjtVar.zzhk().zzhr() == null) {
            return null;
        }
        return zzjzVar.getSymbols().get(zzjzVar.getSymbols().size() - 1).zzhk().zzhr().getType();
    }
}
