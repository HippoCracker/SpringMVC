package com.smartengine.pojo;

import java.util.ArrayList;

/**
 * Created by zongzesheng on 11/21/15.
 */
public class Sentence {

  private ArrayList<Word> words;
  private Boolean status;

  public Sentence() {
    words = new ArrayList<Word>();
  }

  public void addWord(Word word) {
    words.add(word);
  }

  public void removeWord(Word word) {
    words.remove(word);
  }

  public ArrayList<Word> getWords() {
    return words;
  }

  public void setWords(ArrayList<Word> words) {
    this.words = words;
  }

  public Boolean getStatus() {
    return status;
  }

  public void setStatus(Boolean status) {
    this.status = status;
  }
}

