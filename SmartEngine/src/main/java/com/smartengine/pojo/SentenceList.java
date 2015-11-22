package com.smartengine.pojo;

import java.util.ArrayList;

/**
 * Created by zongzesheng on 11/21/15.
 */
public class SentenceList {

  private ArrayList<Sentence> sentences;

  public SentenceList() {
    sentences = new ArrayList<Sentence>();
  }

  public void addSentence(Sentence s) {
    sentences.add(s);
  }

  public void removeSentence(Sentence s) {
    sentences.remove(s);
  }

  public ArrayList<Sentence> getSentences() {
    return sentences;
  }

  public void setSentences(ArrayList<Sentence> sentences) {
    this.sentences = sentences;
  }
}
