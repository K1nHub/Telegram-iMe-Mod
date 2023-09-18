package com.google.firebase.p020ml.vision.text;

import android.graphics.Rect;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.vision.text.Text;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.firebase.ml.vision.text.FirebaseVisionText */
/* loaded from: classes4.dex */
public class FirebaseVisionText {
    private final List<TextBlock> zzbdq;

    /* renamed from: com.google.firebase.ml.vision.text.FirebaseVisionText$Element */
    /* loaded from: classes4.dex */
    public static class Element extends TextBase {
        Element(com.google.android.gms.vision.text.Element element) {
            super(element);
        }

        public Element(String str, Rect rect, List<RecognizedLanguage> list, Float f) {
            super(str, rect, list, f);
        }
    }

    public FirebaseVisionText(SparseArray<com.google.android.gms.vision.text.TextBlock> sparseArray) {
        this.zzbdq = new ArrayList();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < sparseArray.size(); i++) {
            com.google.android.gms.vision.text.TextBlock textBlock = sparseArray.get(sparseArray.keyAt(i));
            if (textBlock != null) {
                TextBlock textBlock2 = new TextBlock(textBlock);
                this.zzbdq.add(textBlock2);
                if (sb.length() != 0) {
                    sb.append("\n");
                }
                if (textBlock.getValue() != null) {
                    sb.append(textBlock2.getText());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.firebase.ml.vision.text.FirebaseVisionText$TextBase */
    /* loaded from: classes4.dex */
    public static class TextBase {
        private final Float confidence;
        private final String text;
        private final Rect zzbat;
        private final List<RecognizedLanguage> zzbbn;

        TextBase(Text text) {
            Preconditions.checkNotNull(text, "Text to construct FirebaseVisionText classes can't be null");
            this.confidence = null;
            this.text = text.getValue();
            this.zzbat = text.getBoundingBox();
            text.getCornerPoints();
            this.zzbbn = Collections.emptyList();
        }

        private TextBase(String str, Rect rect, List<RecognizedLanguage> list, Float f) {
            Preconditions.checkNotNull(str, "Text string cannot be null");
            Preconditions.checkNotNull(list, "Text languages cannot be null");
            this.confidence = f;
            this.text = str;
            this.zzbat = rect;
            this.zzbbn = list;
        }

        public Rect getBoundingBox() {
            return this.zzbat;
        }

        public String getText() {
            String str = this.text;
            return str == null ? "" : str;
        }

        public Float getConfidence() {
            return this.confidence;
        }

        public List<RecognizedLanguage> getRecognizedLanguages() {
            return this.zzbbn;
        }
    }

    /* renamed from: com.google.firebase.ml.vision.text.FirebaseVisionText$Line */
    /* loaded from: classes4.dex */
    public static class Line extends TextBase {
        private final List<Element> zzbdr;

        Line(com.google.android.gms.vision.text.Line line) {
            super(line);
            this.zzbdr = new ArrayList();
            for (Text text : line.getComponents()) {
                if (text instanceof com.google.android.gms.vision.text.Element) {
                    this.zzbdr.add(new Element((com.google.android.gms.vision.text.Element) text));
                } else {
                    Log.e("FirebaseVisionText", "A subcomponent of line is should be an element!");
                }
            }
        }

        public Line(String str, Rect rect, List<RecognizedLanguage> list, List<Element> list2, Float f) {
            super(str, rect, list, f);
            this.zzbdr = list2;
        }
    }

    /* renamed from: com.google.firebase.ml.vision.text.FirebaseVisionText$TextBlock */
    /* loaded from: classes4.dex */
    public static class TextBlock extends TextBase {
        private final List<Line> zzbds;

        TextBlock(com.google.android.gms.vision.text.TextBlock textBlock) {
            super(textBlock);
            this.zzbds = new ArrayList();
            for (Text text : textBlock.getComponents()) {
                if (text instanceof com.google.android.gms.vision.text.Line) {
                    this.zzbds.add(new Line((com.google.android.gms.vision.text.Line) text));
                } else {
                    Log.e("FirebaseVisionText", "A subcomponent of textblock is should be a line!");
                }
            }
        }

        public TextBlock(String str, Rect rect, List<RecognizedLanguage> list, List<Line> list2, Float f) {
            super(str, rect, list, f);
            this.zzbds = list2;
        }
    }

    public FirebaseVisionText(String str, List<TextBlock> list) {
        ArrayList arrayList = new ArrayList();
        this.zzbdq = arrayList;
        arrayList.addAll(list);
    }
}
